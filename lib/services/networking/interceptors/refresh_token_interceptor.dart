import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Providers
// import '../../../providers/all_providers.dart';

//Endpoints
// import '../api_endpoint.dart';

//Helpers
import '../../../helper/typedefs.dart';

/// A class that holds intercepting logic for refreshing expired tokens. This
/// is the last interceptor in the queue.
class RefreshTokenInterceptor extends Interceptor {
  /// An instance of [Dio] for network requests
  final Dio _dio;
  final Ref _ref;

  RefreshTokenInterceptor({
    required Dio dioClient,
    required Ref ref,
  }) : _dio = dioClient, _ref = ref;

  /// The name of the exception on which this interceptor is triggered.
  // ignore: non_constant_identifier_names
  String get TokenExpiredException => 'TokenExpiredException';

  /// This method is used to send a refresh token request if the error
  /// indicates an expired token.
  ///
  /// In case of expired token, it creates a new [Dio] instance, replicates
  /// its options and locks the current instance to prevent further requests.
  /// The new instance retrieves a new token and updates it. The original
  /// request is retried with the new token.
  ///
  /// ** NOTE: ** Any requests from original instance will trigger all attached
  /// interceptors as expected.
  ///
  /// ** The structure of response in case of errors or the refresh request is
  /// dependant on the API and may not always be the same. It might need
  /// changing according to your own API. **
  @override
  void onError(
    DioError dioError,
    ErrorInterceptorHandler handler,
  ) async {
    if (dioError.response != null) {
      if (dioError.response!.data != null) {
        final headers = dioError.response!.data['headers'] as JSON;

        //Check error type to be token expired error
        var error = headers['error'] as String;
        if (error == TokenExpiredException) {
          //Make new dio and lock old one
          final tokenDio = Dio();
          //contentType already set in tokenDio headers
          tokenDio.options = _dio.options;
          _dio.lock();

          //Make original req with new token
          final response = await _dio.request<JSON>(
            dioError.requestOptions.path,
            data: dioError.requestOptions.data,
            cancelToken: dioError.requestOptions.cancelToken,
            // options: Options(
            //   headers: <String, Object?>{'Authorization': 'Bearer $newToken'},
            // ),
          );
          return handler.resolve(response);
        }
      }
    }

    //if not token expired error, forward it to try catch in dio_service
    return super.onError(dioError, handler);
  }

}
