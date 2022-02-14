import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sure_odds/helper/typedefs.dart';
import 'leagues.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel {
  const ApiResponseModel._();

  const factory ApiResponseModel({
     required int status, //1 for good, 0 for issh
    @Default('') String message,
    @JsonKey(name: 'data') Leagues leagues,


  }) = _ApiResponseModel;


  factory ApiResponseModel.fromJson(JSON json) =>
      _$ApiResponseModel(json);
}