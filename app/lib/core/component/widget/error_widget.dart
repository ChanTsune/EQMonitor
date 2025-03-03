import 'package:dio/dio.dart';
import 'package:eqmonitor/core/component/widget/dio_exception_text.dart';
import 'package:flutter/material.dart';

class ErrorInfoWidget extends StatelessWidget {
  const ErrorInfoWidget({
    required this.error,
    this.onRefresh,
    super.key,
  });
  final Object error;
  final void Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.error,
                  size: 48,
                ),
              ),
              if (error is DioException)
                ...() {
                  final exception = error as DioException;
                  final data = exception.response?.data;
                  final response = exception.response;
                  return [
                    DioExceptionText(
                      exception: exception,
                    ),
                    Text(
                      (response != null
                              ? '${exception.response?.statusCode} ${exception.response?.statusMessage}'
                              : '') +
                          switch (data) {
                            {
                              'code': final String code,
                              'details': final String details,
                            } =>
                              '\nエラーコード $code: $details',
                            _ => '',
                          },
                      textAlign: TextAlign.center,
                    ),
                  ];
                }()
              else
                const Text('エラーが発生しました'),
              const SizedBox(height: 16),
              if (onRefresh != null)
                FilledButton.icon(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => onRefresh?.call(),
                  label: const Text('再読み込み'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
