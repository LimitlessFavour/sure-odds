import 'package:freezed_annotation/freezed_annotation.dart';
import '../helper/typedefs.dart';
import 'leagues.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class PredictionsResponseModel with _$PredictionsResponseModel {

 factory PredictionsResponseModel({
     required int status, //1 for good, 0 for issh
    @Default('') String message,
    @JsonKey(name: 'data') Leagues? leagues,
  }) = _PredictionsResponseModel;


  factory PredictionsResponseModel.fromJson(JSON json) =>
      _$PredictionsResponseModelFromJson(json);
}

