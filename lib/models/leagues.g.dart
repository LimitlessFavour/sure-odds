// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leagues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Leagues _$$_LeaguesFromJson(Map<String, dynamic> json) => _$_Leagues(
      epl: (json['epl'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Prediction>[],
      laliga: (json['laliga'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Prediction>[],
      bundesliga: (json['bund'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Prediction>[],
      seriaA: (json['seria'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Prediction>[],
      ligue1: (json['france'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Prediction>[],
      primeriaLiga: (json['portugal'] as List<dynamic>?)
              ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Prediction>[],
    );

Map<String, dynamic> _$$_LeaguesToJson(_$_Leagues instance) =>
    <String, dynamic>{
      'epl': instance.epl,
      'laliga': instance.laliga,
      'bund': instance.bundesliga,
      'seria': instance.seriaA,
      'france': instance.ligue1,
      'portugal': instance.primeriaLiga,
    };
