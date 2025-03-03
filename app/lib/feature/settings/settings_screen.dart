import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:eqmonitor/core/api/api_authentication_service.dart';
import 'package:eqmonitor/core/component/container/bordered_container.dart';
import 'package:eqmonitor/core/provider/debugger/debugger_provider.dart';
import 'package:eqmonitor/core/provider/package_info.dart';
import 'package:eqmonitor/core/router/router.dart';
import 'package:eqmonitor/feature/settings/component/settings_section_header.dart';
import 'package:eqmonitor/feature/settings/features/feedback/data/custom_feedback.dart';
import 'package:eqmonitor/gen/assets.gen.dart';
import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDebugger = ref.watch(debuggerProvider).isDebugger;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: 80,
                height: 80,
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.antiAlias,
                  elevation: 4,
                  child: Assets.images.icon.image(
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          const _AppVersionInformation(),
          BorderedContainer(
            accentColor: Theme.of(context).colorScheme.secondaryContainer,
            padding: EdgeInsets.zero,
            child: ListTile(
              title: const Text('EQMonitorを応援する'),
              subtitle: const Text(
                '開発者に寄付することで、アプリの開発を支援できます',
              ),
              leading: const Icon(Icons.lightbulb),
              onTap: () => const DonationRoute().push<void>(context),
            ),
          ),
          const SettingsSectionHeader(text: '各種設定'),
          ListTile(
            title: const Text('通知条件設定'),
            leading: const Icon(Icons.notifications),
            onTap: () => const NotificationRoute().push<void>(context),
          ),
          ListTile(
            title: const Text('表示設定'),
            leading: const Icon(Icons.color_lens),
            onTap: () => const DisplayRoute().push<void>(context),
          ),
          ListTile(
            title: const Text('強震モニタ設定'),
            leading: const Icon(Icons.settings),
            onTap: () => context.push(const KmoniRoute().location),
          ),
          ListTile(
            title: const Text('地震履歴設定'),
            leading: const Icon(Icons.history),
            onTap: () => context.push(
              const EarthquakeHistoryConfigRoute().location,
            ),
          ),
          const SettingsSectionHeader(text: 'アプリの情報と問い合わせ'),
          ListTile(
            title: const Text('フィードバック'),
            subtitle: const Text('ご意見・ご要望などもこちらからお願いします'),
            leading: const Icon(Icons.feedback),
            onTap: () => _onInquiryTap(context, ref),
          ),
          ListTile(
            title: const Text('このアプリケーションについて'),
            subtitle: const Text('利用規約やプライバシーポリシーを確認できます'),
            leading: const Icon(Icons.description),
            onTap: () => const AboutThisAppRoute().push<void>(context),
          ),
          ListTile(
            title: const Text('サーバの稼働状況'),
            subtitle: const Text('外部Webサイトへ遷移します'),
            leading: const Icon(Icons.network_ping),
            onTap: () => launchUrlString(
              'https://status.eqmonitor.app/',
              mode: LaunchMode.externalApplication,
            ),
          ),
          Center(
            child: Text(
              'Powered by Flutter',
              style: textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.8),
              ),
            ),
          ),
          if (isDebugger) ...[
            Center(
              child: Text(
                'Debug Mode',
                style: textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.8),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('デバッグメニュー'),
              leading: const Icon(Icons.bug_report),
              onTap: () => context.push(const DebuggerRoute().location),
            ),
          ],
        ],
      ),
    );
  }
}

class _AppVersionInformation extends HookConsumerWidget {
  const _AppVersionInformation();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = ref.watch(packageInfoProvider);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final patchInfoFuture = useMemoized(
      () => (
        ShorebirdCodePush().currentPatchNumber(),
        ShorebirdCodePush().nextPatchNumber(),
      ).wait,
    );
    final patchInfo = useFuture(patchInfoFuture);

    var text = 'EQMonitor v${packageInfo.version} '
        '(${packageInfo.buildNumber}';
    if (patchInfo.hasData) {
      final currentPatch = patchInfo.data!.$1;
      final nextPatch = patchInfo.data!.$2;
      text += switch ((currentPatch, nextPatch)) {
        (null, null) => ')',
        (null, final int next) => '+$next)\n&'
            '新しいパッチが利用可能です。2回アプリケーションを再起動して適用できます。',
        (final int current, null) => '+$current)',
        (final int current, final int next) => '+$current->$next)\n'
            '新しいパッチが利用可能です。2回アプリケーションを再起動して適用できます。',
      };
    } else {
      text += ')';
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          text,
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }
}

Future<void> _onInquiryTap(BuildContext context, WidgetRef ref) async {
  BetterFeedback.of(context).show(
    (feedback) async {
      final packageInfo = ref.read(packageInfoProvider);
      final payload = await ref
          .read(apiAuthenticationServiceProvider.notifier)
          .extractPayload();

      final base = '--------------------------\n'
          'EQMonitor v${packageInfo.version}+${packageInfo.buildNumber}\n'
          'Payload: $payload\n'
          '--------------------------';
      // draft an email and send to developer
      final screenshotFilePath = await writeImageToStorage(feedback.screenshot);
      final extra = CustomFeedback.fromJson(feedback.extra!);

      final email = Email(
        body: '${feedback.text}\n\n$base\n\n${jsonEncode(extra.toJson())}',
        subject: 'EQMonitor Feedback',
        recipients: ['feedback@eqmonitor.app'],
        attachmentPaths: [
          if (extra.isScreenshotAttached) screenshotFilePath,
        ],
      );
      try {
        await FlutterEmailSender.send(email);
      } on PlatformException catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('エラーが発生しました: ${e.message}'),
            ),
          );
        }
      }
    },
  );
}

Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
  final output = await getTemporaryDirectory();
  final screenshotFilePath = '${output.path}/feedback.png';
  final screenshotFile = File(screenshotFilePath);
  await screenshotFile.writeAsBytes(feedbackScreenshot);
  return screenshotFilePath;
}
