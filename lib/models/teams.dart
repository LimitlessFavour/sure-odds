import 'package:freezed_annotation/freezed_annotation.dart';
import '../helper/typedefs.dart';


part 'teams.freezed.dart';
part 'teams.g.dart';

@freezed
class Teams with _$Teams {
  const Teams._();

  const factory Teams({
    required Team home,
    required Team away,
  }) = _Teams;


  factory Teams.fromJson(JSON json) =>
      _$TeamsFromJson(json);
}


@freezed
class Team with _$Team {
  const Team._();

  const factory Team({
    @Default(0) double? id,
    @Default('') String? name,
    @Default('') String? logo,
    @JsonKey(name: 'last_5') required Last5 last5,
    @JsonKey(name: 'league')  RecentLeagueMatches? recentLeagueMatches,



  }) = _Team;


  factory Team.fromJson(JSON json) =>
      _$TeamFromJson(json);
}

@freezed
class Last5 with _$Last5 {
  const Last5._();

  const factory Last5({
    @Default('')@JsonKey(name: 'form') String? formPercentage,
    @Default('') @JsonKey(name: 'att') String? attPercentage,
    @Default('') @JsonKey(name: 'def') String? defPercentage,
   //ignoring what's left here
  }) = _Last5;


  factory Last5.fromJson(JSON json) =>
      _$Last5FromJson(json);
}

@freezed
class RecentLeagueMatches with _$RecentLeagueMatches {
  const RecentLeagueMatches._();

  const factory RecentLeagueMatches({
    @Default('') String? form,

  }) = _RecentLeagueMatches;


  factory RecentLeagueMatches.fromJson(JSON json) =>
      _$RecentLeagueMatchesFromJson(json);
}