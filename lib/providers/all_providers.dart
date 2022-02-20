import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../enums/enums.dart';
import '../helper/utils/ad_manager.dart';
import '../models/prediction.dart';
import '../services/local_storage/key_value_storage_service.dart';
import '../services/networking/api_endpoint.dart';
import '../services/networking/api_service.dart';
import '../services/networking/dio_service.dart';
import '../services/networking/interceptors/api_interceptor.dart';
import '../services/networking/interceptors/logging_interceptor.dart';
import '../services/networking/interceptors/refresh_token_interceptor.dart';
import '../services/repositories/ads_repository.dart';
import '../services/repositories/favourites_repository.dart';
import '../services/repositories/predictions_repository.dart';
import '../views/screens/home_screen.dart';
import 'ad_providers.dart';
import 'favourites_provider.dart';
import 'states/ad_state.dart';

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

final _favouritesRepositoryProvider = Provider<FavouritesRepository>((ref) {
  final _storageService = ref.watch(keyValueStorageServiceProvider);
  return FavouritesRepository(storageService: _storageService);
});

final _adsRepositoryProvider = Provider<AdsRepository>(
  (ref) {
    final _adManager = ref.watch(_adManagerProvider);
    return AdsRepository(adManager: _adManager);
  },
);

final todayPredictionsProvider = FutureProvider.autoDispose((ref) async {
  final _predictionsProvider = ref.watch(_predictionsRepositoryProvider);
  return await _predictionsProvider.fetchTodays();
});

final tomorrowsPredictionsProvider = FutureProvider.autoDispose((ref) async {
  final _predictionsProvider = ref.watch(_predictionsRepositoryProvider);
  return await _predictionsProvider.fetchTomorrows();
});


final bannerAdsProvider = StateNotifierProvider<BannerAdProvider, BannerAdState>((ref) {
  final _adsRepository = ref.watch(_adsRepositoryProvider);
  return BannerAdProvider(
    ref: ref,
    adsRepository: _adsRepository,
  );
});


final interstitialAdsProvider = StateNotifierProvider<InterstitialAdProvider, InterstitialAdState>((ref) {
  final _adsRepository = ref.watch(_adsRepositoryProvider);
  return InterstitialAdProvider(
    ref: ref,
    adsRepository: _adsRepository,
  );
});



final favouritesProvider =  StateNotifierProvider<FavouritesProvider, List<Prediction>>((ref) {
  final _favouritesRepository = ref.watch(_favouritesRepositoryProvider);
  return FavouritesProvider(
    ref: ref,
    favouritesRepository: _favouritesRepository,
  );
});

// final favouritesPredictionsProvider = StateProvider<List<Prediction>>((ref){
//   return TabItems.all;
// });

//tabs
final predictionDateTabStateProvider = StateProvider<PredictionDate>((ref){
  return PredictionDate.today;
});

final tabStateProvider = StateProvider<TabItems>((ref){
  return TabItems.all;
});
