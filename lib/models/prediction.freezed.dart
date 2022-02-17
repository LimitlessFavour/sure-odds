// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return _Prediction.fromJson(json);
}

/// @nodoc
class _$PredictionTearOff {
  const _$PredictionTearOff();

  _Prediction call(
      {@JsonKey(name: 'predictions') required PredictionDetails details,
      required Teams teams}) {
    return _Prediction(
      details: details,
      teams: teams,
    );
  }

  Prediction fromJson(Map<String, Object?> json) {
    return Prediction.fromJson(json);
  }
}

/// @nodoc
const $Prediction = _$PredictionTearOff();

/// @nodoc
mixin _$Prediction {
  @JsonKey(name: 'predictions')
  PredictionDetails get details => throw _privateConstructorUsedError;
  Teams get teams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionCopyWith<Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionCopyWith<$Res> {
  factory $PredictionCopyWith(
          Prediction value, $Res Function(Prediction) then) =
      _$PredictionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'predictions') PredictionDetails details, Teams teams});

  $PredictionDetailsCopyWith<$Res> get details;
  $TeamsCopyWith<$Res> get teams;
}

/// @nodoc
class _$PredictionCopyWithImpl<$Res> implements $PredictionCopyWith<$Res> {
  _$PredictionCopyWithImpl(this._value, this._then);

  final Prediction _value;
  // ignore: unused_field
  final $Res Function(Prediction) _then;

  @override
  $Res call({
    Object? details = freezed,
    Object? teams = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as PredictionDetails,
      teams: teams == freezed
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
    ));
  }

  @override
  $PredictionDetailsCopyWith<$Res> get details {
    return $PredictionDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }

  @override
  $TeamsCopyWith<$Res> get teams {
    return $TeamsCopyWith<$Res>(_value.teams, (value) {
      return _then(_value.copyWith(teams: value));
    });
  }
}

/// @nodoc
abstract class _$PredictionCopyWith<$Res> implements $PredictionCopyWith<$Res> {
  factory _$PredictionCopyWith(
          _Prediction value, $Res Function(_Prediction) then) =
      __$PredictionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'predictions') PredictionDetails details, Teams teams});

  @override
  $PredictionDetailsCopyWith<$Res> get details;
  @override
  $TeamsCopyWith<$Res> get teams;
}

/// @nodoc
class __$PredictionCopyWithImpl<$Res> extends _$PredictionCopyWithImpl<$Res>
    implements _$PredictionCopyWith<$Res> {
  __$PredictionCopyWithImpl(
      _Prediction _value, $Res Function(_Prediction) _then)
      : super(_value, (v) => _then(v as _Prediction));

  @override
  _Prediction get _value => super._value as _Prediction;

  @override
  $Res call({
    Object? details = freezed,
    Object? teams = freezed,
  }) {
    return _then(_Prediction(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as PredictionDetails,
      teams: teams == freezed
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prediction extends _Prediction {
  const _$_Prediction(
      {@JsonKey(name: 'predictions') required this.details,
      required this.teams})
      : super._();

  factory _$_Prediction.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionFromJson(json);

  @override
  @JsonKey(name: 'predictions')
  final PredictionDetails details;
  @override
  final Teams teams;

  @override
  String toString() {
    return 'Prediction(details: $details, teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Prediction &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.teams, teams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(teams));

  @JsonKey(ignore: true)
  @override
  _$PredictionCopyWith<_Prediction> get copyWith =>
      __$PredictionCopyWithImpl<_Prediction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionToJson(this);
  }
}

abstract class _Prediction extends Prediction {
  const factory _Prediction(
      {@JsonKey(name: 'predictions') required PredictionDetails details,
      required Teams teams}) = _$_Prediction;
  const _Prediction._() : super._();

  factory _Prediction.fromJson(Map<String, dynamic> json) =
      _$_Prediction.fromJson;

  @override
  @JsonKey(name: 'predictions')
  PredictionDetails get details;
  @override
  Teams get teams;
  @override
  @JsonKey(ignore: true)
  _$PredictionCopyWith<_Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}

PredictionDetails _$PredictionDetailsFromJson(Map<String, dynamic> json) {
  return _PredictionDetails.fromJson(json);
}

/// @nodoc
class _$PredictionDetailsTearOff {
  const _$PredictionDetailsTearOff();

  _PredictionDetails call(
      {required Winner winner,
      @JsonKey(name: 'win_or_draw') bool? winOrDraw = false,
      @JsonKey(name: 'under_over') double? underOver = 0,
      String? advice = '',
      @JsonKey(name: 'goals') required Goals goals,
      @JsonKey(name: 'percent') required Percent percentWinProbability}) {
    return _PredictionDetails(
      winner: winner,
      winOrDraw: winOrDraw,
      underOver: underOver,
      advice: advice,
      goals: goals,
      percentWinProbability: percentWinProbability,
    );
  }

  PredictionDetails fromJson(Map<String, Object?> json) {
    return PredictionDetails.fromJson(json);
  }
}

/// @nodoc
const $PredictionDetails = _$PredictionDetailsTearOff();

/// @nodoc
mixin _$PredictionDetails {
  Winner get winner => throw _privateConstructorUsedError;
  @JsonKey(name: 'win_or_draw')
  bool? get winOrDraw => throw _privateConstructorUsedError;
  @JsonKey(name: 'under_over')
  double? get underOver => throw _privateConstructorUsedError;
  String? get advice => throw _privateConstructorUsedError;
  @JsonKey(name: 'goals')
  Goals get goals => throw _privateConstructorUsedError;
  @JsonKey(name: 'percent')
  Percent get percentWinProbability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionDetailsCopyWith<PredictionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionDetailsCopyWith<$Res> {
  factory $PredictionDetailsCopyWith(
          PredictionDetails value, $Res Function(PredictionDetails) then) =
      _$PredictionDetailsCopyWithImpl<$Res>;
  $Res call(
      {Winner winner,
      @JsonKey(name: 'win_or_draw') bool? winOrDraw,
      @JsonKey(name: 'under_over') double? underOver,
      String? advice,
      @JsonKey(name: 'goals') Goals goals,
      @JsonKey(name: 'percent') Percent percentWinProbability});

  $WinnerCopyWith<$Res> get winner;
  $GoalsCopyWith<$Res> get goals;
  $PercentCopyWith<$Res> get percentWinProbability;
}

/// @nodoc
class _$PredictionDetailsCopyWithImpl<$Res>
    implements $PredictionDetailsCopyWith<$Res> {
  _$PredictionDetailsCopyWithImpl(this._value, this._then);

  final PredictionDetails _value;
  // ignore: unused_field
  final $Res Function(PredictionDetails) _then;

  @override
  $Res call({
    Object? winner = freezed,
    Object? winOrDraw = freezed,
    Object? underOver = freezed,
    Object? advice = freezed,
    Object? goals = freezed,
    Object? percentWinProbability = freezed,
  }) {
    return _then(_value.copyWith(
      winner: winner == freezed
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as Winner,
      winOrDraw: winOrDraw == freezed
          ? _value.winOrDraw
          : winOrDraw // ignore: cast_nullable_to_non_nullable
              as bool?,
      underOver: underOver == freezed
          ? _value.underOver
          : underOver // ignore: cast_nullable_to_non_nullable
              as double?,
      advice: advice == freezed
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
      percentWinProbability: percentWinProbability == freezed
          ? _value.percentWinProbability
          : percentWinProbability // ignore: cast_nullable_to_non_nullable
              as Percent,
    ));
  }

  @override
  $WinnerCopyWith<$Res> get winner {
    return $WinnerCopyWith<$Res>(_value.winner, (value) {
      return _then(_value.copyWith(winner: value));
    });
  }

  @override
  $GoalsCopyWith<$Res> get goals {
    return $GoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value));
    });
  }

  @override
  $PercentCopyWith<$Res> get percentWinProbability {
    return $PercentCopyWith<$Res>(_value.percentWinProbability, (value) {
      return _then(_value.copyWith(percentWinProbability: value));
    });
  }
}

/// @nodoc
abstract class _$PredictionDetailsCopyWith<$Res>
    implements $PredictionDetailsCopyWith<$Res> {
  factory _$PredictionDetailsCopyWith(
          _PredictionDetails value, $Res Function(_PredictionDetails) then) =
      __$PredictionDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Winner winner,
      @JsonKey(name: 'win_or_draw') bool? winOrDraw,
      @JsonKey(name: 'under_over') double? underOver,
      String? advice,
      @JsonKey(name: 'goals') Goals goals,
      @JsonKey(name: 'percent') Percent percentWinProbability});

  @override
  $WinnerCopyWith<$Res> get winner;
  @override
  $GoalsCopyWith<$Res> get goals;
  @override
  $PercentCopyWith<$Res> get percentWinProbability;
}

/// @nodoc
class __$PredictionDetailsCopyWithImpl<$Res>
    extends _$PredictionDetailsCopyWithImpl<$Res>
    implements _$PredictionDetailsCopyWith<$Res> {
  __$PredictionDetailsCopyWithImpl(
      _PredictionDetails _value, $Res Function(_PredictionDetails) _then)
      : super(_value, (v) => _then(v as _PredictionDetails));

  @override
  _PredictionDetails get _value => super._value as _PredictionDetails;

  @override
  $Res call({
    Object? winner = freezed,
    Object? winOrDraw = freezed,
    Object? underOver = freezed,
    Object? advice = freezed,
    Object? goals = freezed,
    Object? percentWinProbability = freezed,
  }) {
    return _then(_PredictionDetails(
      winner: winner == freezed
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as Winner,
      winOrDraw: winOrDraw == freezed
          ? _value.winOrDraw
          : winOrDraw // ignore: cast_nullable_to_non_nullable
              as bool?,
      underOver: underOver == freezed
          ? _value.underOver
          : underOver // ignore: cast_nullable_to_non_nullable
              as double?,
      advice: advice == freezed
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String?,
      goals: goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
      percentWinProbability: percentWinProbability == freezed
          ? _value.percentWinProbability
          : percentWinProbability // ignore: cast_nullable_to_non_nullable
              as Percent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PredictionDetails extends _PredictionDetails {
  const _$_PredictionDetails(
      {required this.winner,
      @JsonKey(name: 'win_or_draw') this.winOrDraw = false,
      @JsonKey(name: 'under_over') this.underOver = 0,
      this.advice = '',
      @JsonKey(name: 'goals') required this.goals,
      @JsonKey(name: 'percent') required this.percentWinProbability})
      : super._();

  factory _$_PredictionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionDetailsFromJson(json);

  @override
  final Winner winner;
  @override
  @JsonKey(name: 'win_or_draw')
  final bool? winOrDraw;
  @override
  @JsonKey(name: 'under_over')
  final double? underOver;
  @JsonKey()
  @override
  final String? advice;
  @override
  @JsonKey(name: 'goals')
  final Goals goals;
  @override
  @JsonKey(name: 'percent')
  final Percent percentWinProbability;

  @override
  String toString() {
    return 'PredictionDetails(winner: $winner, winOrDraw: $winOrDraw, underOver: $underOver, advice: $advice, goals: $goals, percentWinProbability: $percentWinProbability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PredictionDetails &&
            const DeepCollectionEquality().equals(other.winner, winner) &&
            const DeepCollectionEquality().equals(other.winOrDraw, winOrDraw) &&
            const DeepCollectionEquality().equals(other.underOver, underOver) &&
            const DeepCollectionEquality().equals(other.advice, advice) &&
            const DeepCollectionEquality().equals(other.goals, goals) &&
            const DeepCollectionEquality()
                .equals(other.percentWinProbability, percentWinProbability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(winner),
      const DeepCollectionEquality().hash(winOrDraw),
      const DeepCollectionEquality().hash(underOver),
      const DeepCollectionEquality().hash(advice),
      const DeepCollectionEquality().hash(goals),
      const DeepCollectionEquality().hash(percentWinProbability));

  @JsonKey(ignore: true)
  @override
  _$PredictionDetailsCopyWith<_PredictionDetails> get copyWith =>
      __$PredictionDetailsCopyWithImpl<_PredictionDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionDetailsToJson(this);
  }
}

abstract class _PredictionDetails extends PredictionDetails {
  const factory _PredictionDetails(
          {required Winner winner,
          @JsonKey(name: 'win_or_draw') bool? winOrDraw,
          @JsonKey(name: 'under_over') double? underOver,
          String? advice,
          @JsonKey(name: 'goals') required Goals goals,
          @JsonKey(name: 'percent') required Percent percentWinProbability}) =
      _$_PredictionDetails;
  const _PredictionDetails._() : super._();

  factory _PredictionDetails.fromJson(Map<String, dynamic> json) =
      _$_PredictionDetails.fromJson;

  @override
  Winner get winner;
  @override
  @JsonKey(name: 'win_or_draw')
  bool? get winOrDraw;
  @override
  @JsonKey(name: 'under_over')
  double? get underOver;
  @override
  String? get advice;
  @override
  @JsonKey(name: 'goals')
  Goals get goals;
  @override
  @JsonKey(name: 'percent')
  Percent get percentWinProbability;
  @override
  @JsonKey(ignore: true)
  _$PredictionDetailsCopyWith<_PredictionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Winner _$WinnerFromJson(Map<String, dynamic> json) {
  return _Winner.fromJson(json);
}

/// @nodoc
class _$WinnerTearOff {
  const _$WinnerTearOff();

  _Winner call({int? id = 0, String? name = '', String? comment = ''}) {
    return _Winner(
      id: id,
      name: name,
      comment: comment,
    );
  }

  Winner fromJson(Map<String, Object?> json) {
    return Winner.fromJson(json);
  }
}

/// @nodoc
const $Winner = _$WinnerTearOff();

/// @nodoc
mixin _$Winner {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WinnerCopyWith<Winner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinnerCopyWith<$Res> {
  factory $WinnerCopyWith(Winner value, $Res Function(Winner) then) =
      _$WinnerCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? comment});
}

/// @nodoc
class _$WinnerCopyWithImpl<$Res> implements $WinnerCopyWith<$Res> {
  _$WinnerCopyWithImpl(this._value, this._then);

  final Winner _value;
  // ignore: unused_field
  final $Res Function(Winner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WinnerCopyWith<$Res> implements $WinnerCopyWith<$Res> {
  factory _$WinnerCopyWith(_Winner value, $Res Function(_Winner) then) =
      __$WinnerCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? comment});
}

/// @nodoc
class __$WinnerCopyWithImpl<$Res> extends _$WinnerCopyWithImpl<$Res>
    implements _$WinnerCopyWith<$Res> {
  __$WinnerCopyWithImpl(_Winner _value, $Res Function(_Winner) _then)
      : super(_value, (v) => _then(v as _Winner));

  @override
  _Winner get _value => super._value as _Winner;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? comment = freezed,
  }) {
    return _then(_Winner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Winner extends _Winner {
  const _$_Winner({this.id = 0, this.name = '', this.comment = ''}) : super._();

  factory _$_Winner.fromJson(Map<String, dynamic> json) =>
      _$$_WinnerFromJson(json);

  @JsonKey()
  @override
  final int? id;
  @JsonKey()
  @override
  final String? name;
  @JsonKey()
  @override
  final String? comment;

  @override
  String toString() {
    return 'Winner(id: $id, name: $name, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Winner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$WinnerCopyWith<_Winner> get copyWith =>
      __$WinnerCopyWithImpl<_Winner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WinnerToJson(this);
  }
}

abstract class _Winner extends Winner {
  const factory _Winner({int? id, String? name, String? comment}) = _$_Winner;
  const _Winner._() : super._();

  factory _Winner.fromJson(Map<String, dynamic> json) = _$_Winner.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$WinnerCopyWith<_Winner> get copyWith => throw _privateConstructorUsedError;
}

Goals _$GoalsFromJson(Map<String, dynamic> json) {
  return _Goals.fromJson(json);
}

/// @nodoc
class _$GoalsTearOff {
  const _$GoalsTearOff();

  _Goals call({String? home = '', String? away = ''}) {
    return _Goals(
      home: home,
      away: away,
    );
  }

  Goals fromJson(Map<String, Object?> json) {
    return Goals.fromJson(json);
  }
}

/// @nodoc
const $Goals = _$GoalsTearOff();

/// @nodoc
mixin _$Goals {
  String? get home => throw _privateConstructorUsedError;
  String? get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsCopyWith<Goals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsCopyWith<$Res> {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) then) =
      _$GoalsCopyWithImpl<$Res>;
  $Res call({String? home, String? away});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res> implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  final Goals _value;
  // ignore: unused_field
  final $Res Function(Goals) _then;

  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      away: away == freezed
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GoalsCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$GoalsCopyWith(_Goals value, $Res Function(_Goals) then) =
      __$GoalsCopyWithImpl<$Res>;
  @override
  $Res call({String? home, String? away});
}

/// @nodoc
class __$GoalsCopyWithImpl<$Res> extends _$GoalsCopyWithImpl<$Res>
    implements _$GoalsCopyWith<$Res> {
  __$GoalsCopyWithImpl(_Goals _value, $Res Function(_Goals) _then)
      : super(_value, (v) => _then(v as _Goals));

  @override
  _Goals get _value => super._value as _Goals;

  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_Goals(
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as String?,
      away: away == freezed
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Goals extends _Goals {
  const _$_Goals({this.home = '', this.away = ''}) : super._();

  factory _$_Goals.fromJson(Map<String, dynamic> json) =>
      _$$_GoalsFromJson(json);

  @JsonKey()
  @override
  final String? home;
  @JsonKey()
  @override
  final String? away;

  @override
  String toString() {
    return 'Goals(home: $home, away: $away)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Goals &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality().equals(other.away, away));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(away));

  @JsonKey(ignore: true)
  @override
  _$GoalsCopyWith<_Goals> get copyWith =>
      __$GoalsCopyWithImpl<_Goals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalsToJson(this);
  }
}

abstract class _Goals extends Goals {
  const factory _Goals({String? home, String? away}) = _$_Goals;
  const _Goals._() : super._();

  factory _Goals.fromJson(Map<String, dynamic> json) = _$_Goals.fromJson;

  @override
  String? get home;
  @override
  String? get away;
  @override
  @JsonKey(ignore: true)
  _$GoalsCopyWith<_Goals> get copyWith => throw _privateConstructorUsedError;
}

Percent _$PercentFromJson(Map<String, dynamic> json) {
  return _Percent.fromJson(json);
}

/// @nodoc
class _$PercentTearOff {
  const _$PercentTearOff();

  _Percent call(
      {@JsonKey(name: 'home') String? homeProbability = '',
      @JsonKey(name: 'draw') String? drawProbability = '',
      @JsonKey(name: 'away') String? awayProbability = ''}) {
    return _Percent(
      homeProbability: homeProbability,
      drawProbability: drawProbability,
      awayProbability: awayProbability,
    );
  }

  Percent fromJson(Map<String, Object?> json) {
    return Percent.fromJson(json);
  }
}

/// @nodoc
const $Percent = _$PercentTearOff();

/// @nodoc
mixin _$Percent {
  @JsonKey(name: 'home')
  String? get homeProbability => throw _privateConstructorUsedError;
  @JsonKey(name: 'draw')
  String? get drawProbability => throw _privateConstructorUsedError;
  @JsonKey(name: 'away')
  String? get awayProbability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PercentCopyWith<Percent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentCopyWith<$Res> {
  factory $PercentCopyWith(Percent value, $Res Function(Percent) then) =
      _$PercentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'home') String? homeProbability,
      @JsonKey(name: 'draw') String? drawProbability,
      @JsonKey(name: 'away') String? awayProbability});
}

/// @nodoc
class _$PercentCopyWithImpl<$Res> implements $PercentCopyWith<$Res> {
  _$PercentCopyWithImpl(this._value, this._then);

  final Percent _value;
  // ignore: unused_field
  final $Res Function(Percent) _then;

  @override
  $Res call({
    Object? homeProbability = freezed,
    Object? drawProbability = freezed,
    Object? awayProbability = freezed,
  }) {
    return _then(_value.copyWith(
      homeProbability: homeProbability == freezed
          ? _value.homeProbability
          : homeProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      drawProbability: drawProbability == freezed
          ? _value.drawProbability
          : drawProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      awayProbability: awayProbability == freezed
          ? _value.awayProbability
          : awayProbability // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PercentCopyWith<$Res> implements $PercentCopyWith<$Res> {
  factory _$PercentCopyWith(_Percent value, $Res Function(_Percent) then) =
      __$PercentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'home') String? homeProbability,
      @JsonKey(name: 'draw') String? drawProbability,
      @JsonKey(name: 'away') String? awayProbability});
}

/// @nodoc
class __$PercentCopyWithImpl<$Res> extends _$PercentCopyWithImpl<$Res>
    implements _$PercentCopyWith<$Res> {
  __$PercentCopyWithImpl(_Percent _value, $Res Function(_Percent) _then)
      : super(_value, (v) => _then(v as _Percent));

  @override
  _Percent get _value => super._value as _Percent;

  @override
  $Res call({
    Object? homeProbability = freezed,
    Object? drawProbability = freezed,
    Object? awayProbability = freezed,
  }) {
    return _then(_Percent(
      homeProbability: homeProbability == freezed
          ? _value.homeProbability
          : homeProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      drawProbability: drawProbability == freezed
          ? _value.drawProbability
          : drawProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      awayProbability: awayProbability == freezed
          ? _value.awayProbability
          : awayProbability // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Percent extends _Percent {
  const _$_Percent(
      {@JsonKey(name: 'home') this.homeProbability = '',
      @JsonKey(name: 'draw') this.drawProbability = '',
      @JsonKey(name: 'away') this.awayProbability = ''})
      : super._();

  factory _$_Percent.fromJson(Map<String, dynamic> json) =>
      _$$_PercentFromJson(json);

  @override
  @JsonKey(name: 'home')
  final String? homeProbability;
  @override
  @JsonKey(name: 'draw')
  final String? drawProbability;
  @override
  @JsonKey(name: 'away')
  final String? awayProbability;

  @override
  String toString() {
    return 'Percent(homeProbability: $homeProbability, drawProbability: $drawProbability, awayProbability: $awayProbability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Percent &&
            const DeepCollectionEquality()
                .equals(other.homeProbability, homeProbability) &&
            const DeepCollectionEquality()
                .equals(other.drawProbability, drawProbability) &&
            const DeepCollectionEquality()
                .equals(other.awayProbability, awayProbability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(homeProbability),
      const DeepCollectionEquality().hash(drawProbability),
      const DeepCollectionEquality().hash(awayProbability));

  @JsonKey(ignore: true)
  @override
  _$PercentCopyWith<_Percent> get copyWith =>
      __$PercentCopyWithImpl<_Percent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PercentToJson(this);
  }
}

abstract class _Percent extends Percent {
  const factory _Percent(
      {@JsonKey(name: 'home') String? homeProbability,
      @JsonKey(name: 'draw') String? drawProbability,
      @JsonKey(name: 'away') String? awayProbability}) = _$_Percent;
  const _Percent._() : super._();

  factory _Percent.fromJson(Map<String, dynamic> json) = _$_Percent.fromJson;

  @override
  @JsonKey(name: 'home')
  String? get homeProbability;
  @override
  @JsonKey(name: 'draw')
  String? get drawProbability;
  @override
  @JsonKey(name: 'away')
  String? get awayProbability;
  @override
  @JsonKey(ignore: true)
  _$PercentCopyWith<_Percent> get copyWith =>
      throw _privateConstructorUsedError;
}
