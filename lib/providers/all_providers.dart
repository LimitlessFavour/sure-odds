import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helper/utils/ad_manager.dart';
import '../services/local_storage/key_value_storage_service.dart';
import '../services/networking/api_endpoint.dart';
import '../services/networking/api_service.dart';
import '../services/networking/dio_service.dart';
import '../services/networking/interceptors/api_interceptor.dart';
import '../services/networking/interceptors/logging_interceptor.dart';
import '../services/networking/interceptors/refresh_token_interceptor.dart';
import '../services/repositories/ads_repository.dart';
import '../services/repositories/predictions_repository.dart';

//Services

final keyValueStorageServiceProvider = Provider<KeyValueStorageService>(
  (ref) => KeyValueStorageService(),
);

final _adManagerProvider = Provider<AdManager>(
  (ref) => AdManager(),
);

final _dioProvider = Provider<Dio>((ref) {
  final baseOptions = BaseOptions(
    baseUrl: ApiEndpoint.baseUrl,
  );
  return Dio(baseOptions);
});

final _dioServiceProvider = Provider<DioService>((ref) {
  final _dio = ref.watch(_dioProvider);
  // Order of interceptors very important
  return DioService(
    dioClient: _dio,
    interceptors: [
      ApiInterceptor(ref),
      if (kDebugMode) LoggingInterceptor(),
      RefreshTokenInterceptor(dioClient: _dio, ref: ref)
    ],
  );
});

final _apiServiceProvider = Provider<ApiService>((ref) {
  final _dioService = ref.watch(_dioServiceProvider);
  return ApiService(_dioService);
});

final _predictionsRepositoryProvider = Provider<PredictionsRepository>((ref) {
  final _apiService = ref.watch(_apiServiceProvider);
  final _storageService = ref.watch(keyValueStorageServiceProvider);
  return PredictionsRepository(apiService: _apiService, storageService: _storageService);
});

final _adsRepositoryProvider = Provider<AdsRepository>(
  (ref) {
    final _adManager = ref.watch(_adManagerProvider);
    return AdsRepository(adManager: _adManager);
  },
);
