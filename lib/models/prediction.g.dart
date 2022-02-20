// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Prediction _$$_PredictionFromJson(Map<String, dynamic> json) =>
    _$_Prediction(
      details: PredictionDetails.fromJson(
          json['predictions'] as Map<String, dynamic>),
      teams: Teams.fromJson(json['teams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PredictionToJson(_$_Prediction instance) =>
    <String, dynamic>{
      'predictions': instance.details,
      'teams': instance.teams,
    };

_$_PredictionDetails _$$_PredictionDetailsFromJson(Map<String, dynamic> json) =>
    _$_PredictionDetails(
      winner: Winner.fromJson(json['winner'] as Map<String, dynamic>),
      winOrDraw: json['win_or_draw'] as bool? ?? false,
      underOver: json['under_over'] as String? ?? '',
      advice: json['advice'] as String? ?? '',
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
      percentWinProbability:
          Percent.fromJson(json['percent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PredictionDetailsToJson(
        _$_PredictionDetails instance) =>
    <String, dynamic>{
      'winner': instance.winner,
      'win_or_draw': instance.winOrDraw,
      'under_over': instance.underOver,
      'advice': instance.advice,
      'goals': instance.goals,
      'percent': instance.percentWinProbability,
    };

_$_Winner _$$_WinnerFromJson(Map<String, dynamic> json) => _$_Winner(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$_WinnerToJson(_$_Winner instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
    };

_$_Goals _$$_GoalsFromJson(Map<String, dynamic> json) => _$_Goals(
      home: json['home'] as String? ?? '',
      away: json['away'] as String? ?? '',
    );

Map<String, dynamic> _$$_GoalsToJson(_$_Goals instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$_Percent _$$_PercentFromJson(Map<String, dynamic> json) => _$_Percent(
      homeProbability: json['home'] as String? ?? '',
      drawProbability: json['draw'] as String? ?? '',
      awayProbability: json['away'] as String? ?? '',
    );

Map<String, dynamic> _$$_PercentToJson(_$_Percent instance) =>
    <String, dynamic>{
      'home': instance.homeProbability,
      'draw': instance.drawProbability,
      'away': instance.awayProbability,
    };
