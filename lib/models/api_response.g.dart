// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredictionsResponseModel _$$_PredictionsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PredictionsResponseModel(
      status: json['status'] as int,
      message: json['message'] as String? ?? '',
      leagues: json['data'] == null
          ? null
          : Leagues.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PredictionsResponseModelToJson(
        _$_PredictionsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.leagues,
    };
