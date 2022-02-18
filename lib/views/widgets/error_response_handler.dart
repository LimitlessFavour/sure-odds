import 'package:flutter/material.dart';
import 'package:sure_odds/helper/utils/constants.dart';

//Helpers
import '../../../helper/extensions/context_extensions.dart';

//Services
import '../../../services/networking/network_exception.dart';

class ErrorResponseHandler extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;
  final VoidCallback? onError;
  final VoidCallback? retryCallback;

  const ErrorResponseHandler({
    Key? key,
    this.onError,
    required this.retryCallback,
    required this.error,
    required this.stackTrace,
  }) : super(key: key);

  const factory ErrorResponseHandler.builder({
    Key? key,
    VoidCallback? onError,
    required Object error,
    required StackTrace? stackTrace,
    required Widget Function(NetworkException) builder,
  }) = _ErrorResponseHandlerWithBuilder;

  @override
  Widget build(BuildContext context) {
    if (error is NetworkException) {
      return Center(
        child: Text(
          'Network error occured',
          style: context.bodyText1,
        ),
      );
    }
    onError?.call();
    debugPrint(error.toString());
    debugPrint(stackTrace?.toString());
    return const SizedBox.shrink();
  }
}

class _ErrorResponseHandlerWithBuilder extends ErrorResponseHandler {
  final Widget Function(NetworkException) builder;

  const _ErrorResponseHandlerWithBuilder({
    Key? key,
    VoidCallback? onError,
    required Object error,
    required StackTrace? stackTrace,
    required this.builder,
  }) : super(
          key: key,
          error: error,
          stackTrace: stackTrace,
          onError: onError,
          retryCallback: null,
        );

  @override
  Widget build(BuildContext context) {
    if (error is NetworkException) return builder(error as NetworkException);
    onError?.call();
    debugPrint(error.toString());
    debugPrint(stackTrace?.toString());
    return const SizedBox.shrink();
  }
}
