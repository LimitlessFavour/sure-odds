import 'package:freezed_annotation/freezed_annotation.dart';
import '../helper/typedefs.dart';
import 'teams.dart';


part 'prediction.freezed.dart';
part 'prediction.g.dart';

@freezed
class Prediction with _$Prediction {
  const Prediction._();

  const factory Prediction({
  @JsonKey(name: 'predictions') required PredictionDetails details,
  required Teams teams,
  }) = _Prediction;


  factory Prediction.fromJson(JSON json) =>
      _$PredictionFromJson(json);
}

@freezed
class PredictionDetails with _$PredictionDetails {
  const PredictionDetails._();

  const factory PredictionDetails({
  required Winner winner,
  @Default(false) @JsonKey(name: 'win_or_draw') bool? winOrDraw,
  @Default(0) @JsonKey(name: 'under_over') double? underOver,
  @Default('') String? advice,
  @JsonKey(name: 'goals') required Goals goals,
  @JsonKey(name: 'percent') required Percent percentWinProbability,

  }) = _PredictionDetails;


  factory PredictionDetails.fromJson(JSON json) =>
      _$PredictionDetailsFromJson(json);
}

@freezed
class Winner with _$Winner {
  const Winner._();

  const factory Winner({
    @Default(0) int? id,
    @Default('') String? name,
    @Default('') String? comment,
  }) = _Winner;


  factory Winner.fromJson(JSON json) =>
      _$WinnerFromJson(json);
}

@freezed
class Goals with _$Goals {
  const Goals._();

  const factory Goals({
    @Default('') String? home,
    @Default('') String? away,
  }) = _Goals;


  factory Goals.fromJson(JSON json) =>
      _$GoalsFromJson(json);
}

@freezed
class Percent with _$Percent {
  const Percent._();

  const factory Percent({
    @Default('') @JsonKey(name: 'home') String? homeProbability,
    @Default('') @JsonKey(name: 'draw') String? drawProbability,
    @Default('') @JsonKey(name: 'away') String? awayProbability,
  }) = _Percent;


  factory Percent.fromJson(JSON json) =>
      _$PercentFromJson(json);
}