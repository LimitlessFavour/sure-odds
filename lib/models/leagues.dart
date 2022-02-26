import 'package:freezed_annotation/freezed_annotation.dart';
import '../helper/typedefs.dart';
import 'prediction.dart';

part 'leagues.freezed.dart';
part 'leagues.g.dart';

@freezed
class Leagues with _$Leagues {
  const Leagues._();

  const factory Leagues({
     @Default(<Prediction>[])  @JsonKey(name: 'epl') List<Prediction> epl,
      @Default(<Prediction>[]) @JsonKey(name: 'laliga') List<Prediction> laliga,
      @Default(<Prediction>[]) @JsonKey(name: 'bund') List<Prediction> bundesliga,
      @Default(<Prediction>[]) @JsonKey(name: 'seria') List<Prediction> seriaA,
      @Default(<Prediction>[]) @JsonKey(name: 'france') List<Prediction> ligue1,
      @Default(<Prediction>[]) @JsonKey(name: 'portugal') List<Prediction> primeriaLiga,

  }) = _Leagues;


  factory Leagues.fromJson(JSON json) =>
      _$LeaguesFromJson(json);
}