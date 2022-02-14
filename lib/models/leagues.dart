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


  }) = _Leagues;


  factory Leagues.fromJson(JSON json) =>
      _$Leagues(json);
}