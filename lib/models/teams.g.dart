// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Teams _$$_TeamsFromJson(Map<String, dynamic> json) => _$_Teams(
      home: Team.fromJson(json['home'] as Map<String, dynamic>),
      away: Team.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamsToJson(_$_Teams instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: (json['id'] as num?)?.toDouble() ?? 0,
      name: json['name'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      last5: Last5.fromJson(json['last_5'] as Map<String, dynamic>),
      recentLeagueMatches: json['league'] == null
          ? null
          : RecentLeagueMatches.fromJson(
              json['league'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'last_5': instance.last5,
      'league': instance.recentLeagueMatches,
    };

_$_Last5 _$$_Last5FromJson(Map<String, dynamic> json) => _$_Last5(
      formPercentage: json['form'] as String? ?? '',
      attPercentage: json['att'] as String? ?? '',
      defPercentage: json['def'] as String? ?? '',
      goalsForAgainst: json['goals'] == null
          ? null
          : GoalsForAgainst.fromJson(json['goals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_Last5ToJson(_$_Last5 instance) => <String, dynamic>{
      'form': instance.formPercentage,
      'att': instance.attPercentage,
      'def': instance.defPercentage,
      'goals': instance.goalsForAgainst,
    };

_$_GoalsForAgainst _$$_GoalsForAgainstFromJson(Map<String, dynamic> json) =>
    _$_GoalsForAgainst(
      goalsFor: json['for'] == null
          ? null
          : GoalsFA.fromJson(json['for'] as Map<String, dynamic>),
      goalsAgainst: json['against'] == null
          ? null
          : GoalsFA.fromJson(json['against'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GoalsForAgainstToJson(_$_GoalsForAgainst instance) =>
    <String, dynamic>{
      'for': instance.goalsFor,
      'against': instance.goalsAgainst,
    };

_$_GoalsFA _$$_GoalsFAFromJson(Map<String, dynamic> json) => _$_GoalsFA(
      total: json['total'] as num? ?? 0,
    );

Map<String, dynamic> _$$_GoalsFAToJson(_$_GoalsFA instance) =>
    <String, dynamic>{
      'total': instance.total,
    };

_$_RecentLeagueMatches _$$_RecentLeagueMatchesFromJson(
        Map<String, dynamic> json) =>
    _$_RecentLeagueMatches(
      form: json['form'] as String? ?? '',
    );

Map<String, dynamic> _$$_RecentLeagueMatchesToJson(
        _$_RecentLeagueMatches instance) =>
    <String, dynamic>{
      'form': instance.form,
    };
