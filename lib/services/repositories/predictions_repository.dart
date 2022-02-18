import 'package:dio/dio.dart';
import 'package:sure_odds/services/local_storage/key_value_storage_service.dart';

//models
import '../../models/api_response.dart';

//services
import '../networking/api_endpoint.dart';
import '../networking/api_service.dart';

//helpers
import '../../helper/typedefs.dart';

class PredictionsRepository {
  PredictionsRepository({
    required ApiService apiService,
    required KeyValueStorageService storageService,
    CancelToken? cancelToken,
  })  : _apiService = apiService,
        _storageService = storageService,
        _cancelToken = cancelToken;

  final ApiService _apiService;
  final KeyValueStorageService _storageService;
  final CancelToken? _cancelToken;

  Future<PredictionsResponseModel> fetchTodays() async {
    //fetch offline first
    PredictionsResponseModel? cachedPredictions =
        _storageService.getTodaysFixtures();
    if (cachedPredictions != null) return cachedPredictions;

    //fetch online
    PredictionsResponseModel predictions =
        await _apiService.getDocumentData<PredictionsResponseModel>(
      endpoint: ApiEndpoint.predictions(PredictionsEndpoint.TODAY),
      cancelToken: _cancelToken,
      converter: (responseBody) =>
          PredictionsResponseModel.fromJson(responseBody),
    );

    //save it
    _storageService.saveTodaysFixtures(predictions);
    return predictions;
  }

  Future<PredictionsResponseModel> fetchTomorrows() async {
    //fetch offline first
    PredictionsResponseModel? cachedPredictions =
        _storageService.getTomorrowsFixtures();
    if (cachedPredictions != null) return cachedPredictions;

    //fetch online
    PredictionsResponseModel predictions =
        await _apiService.getDocumentData<PredictionsResponseModel>(
      endpoint: ApiEndpoint.predictions(PredictionsEndpoint.TOMORROW),
      cancelToken: _cancelToken,
      converter: (responseBody) =>
          PredictionsResponseModel.fromJson(responseBody),
    );

    //save it
    _storageService.saveTomorrowsFixtures(predictions);
    return predictions;
  }

  void cancelRequests() {
    _apiService.cancelRequests(cancelToken: _cancelToken);
  }
}
