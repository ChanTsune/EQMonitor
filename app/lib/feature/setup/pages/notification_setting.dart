import 'dart:async';

import 'package:eqmonitor/core/component/button/action_button.dart';
import 'package:eqmonitor/core/component/container/bordered_container.dart';
import 'package:eqmonitor/core/provider/config/permission/permission_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationSettingIntroPage extends HookConsumerWidget {
  const NotificationSettingIntroPage({required this.onNext, super.key});
  final void Function() onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Column(
        children: [
          // 画面上部のタイトル
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              '通知について',
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          BorderedContainer(
            child: Column(
              children: [
                const SizedBox(height: 12),
                // notification icon
                DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.colorScheme.errorContainer,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications_active,
                      color: theme.colorScheme.error,
                      size: 32,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '地震に関する情報をお伝えするために、通知権限を許可してください',
                    style: theme.textTheme.titleMedium!.copyWith(),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          ActionButton.text(
            onPressed: () async {
              unawaited(
                ref
                    .read(permissionProvider.notifier)
                    .requestNotificationPermission(),
              );
              if (context.mounted) {
                onNext();
              }
            },
            text: '通知を許可する',
            context: context,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: onNext,
            child: const Text(
              '拒否する',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
