import 'package:dio/dio.dart';

//models
import '../../models/api_response.dart';

//services
import '../networking/api_endpoint.dart';
import '../networking/api_service.dart';

//helpers
import '../../helper/typedefs.dart';

class PredictionsRepository {
  final ApiService _apiService;
  final CancelToken? _cancelToken;

  PredictionsRepository({
    required ApiService apiService,
    CancelToken? cancelToken,
  })  : _apiService = apiService,
        _cancelToken = cancelToken;

  Future<PredictionsResponseModel> fetchTodays({
    JSON? queryParameters,
  }) async {
    return await _apiService.getDocumentData<PredictionsResponseModel>(
      endpoint: ApiEndpoint.predictions(PredictionsEndpoint.TODAY),
      queryParams: queryParameters,
      cancelToken: _cancelToken,
      converter: (responseBody) => PredictionsResponseModel.fromJson(responseBody),
    );
  }

  Future<PredictionsResponseModel> fetchTomorrows({
    required int theaterId,
  }) async {
    return await _apiService.getDocumentData<PredictionsResponseModel>(
      endpoint: ApiEndpoint.predictions(PredictionsEndpoint.TOMORROW),
      cancelToken: _cancelToken,
      converter: (responseBody) => PredictionsResponseModel.fromJson(responseBody),
    );
  }

  void cancelRequests() {
    _apiService.cancelRequests(cancelToken: _cancelToken);
  }
}
