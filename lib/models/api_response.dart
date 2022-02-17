import 'package:freezed_annotation/freezed_annotation.dart';
import '../helper/typedefs.dart';
import 'leagues.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel {

 factory ApiResponseModel({
     required int status, //1 for good, 0 for issh
    @Default('') String message,
    @JsonKey(name: 'data') Leagues? leagues,
  }) = _ApiResponseModel;


  factory ApiResponseModel.fromJson(JSON json) =>
      _$ApiResponseModelFromJson(json);
}

