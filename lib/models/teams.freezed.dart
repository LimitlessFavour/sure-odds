// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Teams _$TeamsFromJson(Map<String, dynamic> json) {
  return _Teams.fromJson(json);
}

/// @nodoc
class _$TeamsTearOff {
  const _$TeamsTearOff();

  _Teams call({required Team home, required Team away}) {
    return _Teams(
      home: home,
      away: away,
    );
  }

  Teams fromJson(Map<String, Object?> json) {
    return Teams.fromJson(json);
  }
}

/// @nodoc
const $Teams = _$TeamsTearOff();

/// @nodoc
mixin _$Teams {
  Team get home => throw _privateConstructorUsedError;
  Team get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamsCopyWith<Teams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsCopyWith<$Res> {
  factory $TeamsCopyWith(Teams value, $Res Function(Teams) then) =
      _$TeamsCopyWithImpl<$Res>;
  $Res call({Team home, Team away});

  $TeamCopyWith<$Res> get home;
  $TeamCopyWith<$Res> get away;
}

/// @nodoc
class _$TeamsCopyWithImpl<$Res> implements $TeamsCopyWith<$Res> {
  _$TeamsCopyWithImpl(this._value, this._then);

  final Teams _value;
  // ignore: unused_field
  final $Res Function(Teams) _then;

  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Team,
      away: away == freezed
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }

  @override
  $TeamCopyWith<$Res> get home {
    return $TeamCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value));
    });
  }

  @override
  $TeamCopyWith<$Res> get away {
    return $TeamCopyWith<$Res>(_value.away, (value) {
      return _then(_value.copyWith(away: value));
    });
  }
}

/// @nodoc
abstract class _$TeamsCopyWith<$Res> implements $TeamsCopyWith<$Res> {
  factory _$TeamsCopyWith(_Teams value, $Res Function(_Teams) then) =
      __$TeamsCopyWithImpl<$Res>;
  @override
  $Res call({Team home, Team away});

  @override
  $TeamCopyWith<$Res> get home;
  @override
  $TeamCopyWith<$Res> get away;
}

/// @nodoc
class __$TeamsCopyWithImpl<$Res> extends _$TeamsCopyWithImpl<$Res>
    implements _$TeamsCopyWith<$Res> {
  __$TeamsCopyWithImpl(_Teams _value, $Res Function(_Teams) _then)
      : super(_value, (v) => _then(v as _Teams));

  @override
  _Teams get _value => super._value as _Teams;

  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_Teams(
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Team,
      away: away == freezed
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Teams extends _Teams {
  const _$_Teams({required this.home, required this.away}) : super._();

  factory _$_Teams.fromJson(Map<String, dynamic> json) =>
      _$$_TeamsFromJson(json);

  @override
  final Team home;
  @override
  final Team away;

  @override
  String toString() {
    return 'Teams(home: $home, away: $away)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Teams &&
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
  _$TeamsCopyWith<_Teams> get copyWith =>
      __$TeamsCopyWithImpl<_Teams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamsToJson(this);
  }
}

abstract class _Teams extends Teams {
  const factory _Teams({required Team home, required Team away}) = _$_Teams;
  const _Teams._() : super._();

  factory _Teams.fromJson(Map<String, dynamic> json) = _$_Teams.fromJson;

  @override
  Team get home;
  @override
  Team get away;
  @override
  @JsonKey(ignore: true)
  _$TeamsCopyWith<_Teams> get copyWith => throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
class _$TeamTearOff {
  const _$TeamTearOff();

  _Team call(
      {double? id = 0,
      String? name = '',
      String? logo = '',
      @JsonKey(name: 'last_5') required Last5 last5,
      @JsonKey(name: 'league') RecentLeagueMatches? recentLeagueMatches}) {
    return _Team(
      id: id,
      name: name,
      logo: logo,
      last5: last5,
      recentLeagueMatches: recentLeagueMatches,
    );
  }

  Team fromJson(Map<String, Object?> json) {
    return Team.fromJson(json);
  }
}

/// @nodoc
const $Team = _$TeamTearOff();

/// @nodoc
mixin _$Team {
  double? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_5')
  Last5 get last5 => throw _privateConstructorUsedError;
  @JsonKey(name: 'league')
  RecentLeagueMatches? get recentLeagueMatches =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call(
      {double? id,
      String? name,
      String? logo,
      @JsonKey(name: 'last_5') Last5 last5,
      @JsonKey(name: 'league') RecentLeagueMatches? recentLeagueMatches});

  $Last5CopyWith<$Res> get last5;
  $RecentLeagueMatchesCopyWith<$Res>? get recentLeagueMatches;
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? last5 = freezed,
    Object? recentLeagueMatches = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      last5: last5 == freezed
          ? _value.last5
          : last5 // ignore: cast_nullable_to_non_nullable
              as Last5,
      recentLeagueMatches: recentLeagueMatches == freezed
          ? _value.recentLeagueMatches
          : recentLeagueMatches // ignore: cast_nullable_to_non_nullable
              as RecentLeagueMatches?,
    ));
  }

  @override
  $Last5CopyWith<$Res> get last5 {
    return $Last5CopyWith<$Res>(_value.last5, (value) {
      return _then(_value.copyWith(last5: value));
    });
  }

  @override
  $RecentLeagueMatchesCopyWith<$Res>? get recentLeagueMatches {
    if (_value.recentLeagueMatches == null) {
      return null;
    }

    return $RecentLeagueMatchesCopyWith<$Res>(_value.recentLeagueMatches!,
        (value) {
      return _then(_value.copyWith(recentLeagueMatches: value));
    });
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? id,
      String? name,
      String? logo,
      @JsonKey(name: 'last_5') Last5 last5,
      @JsonKey(name: 'league') RecentLeagueMatches? recentLeagueMatches});

  @override
  $Last5CopyWith<$Res> get last5;
  @override
  $RecentLeagueMatchesCopyWith<$Res>? get recentLeagueMatches;
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? last5 = freezed,
    Object? recentLeagueMatches = freezed,
  }) {
    return _then(_Team(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      last5: last5 == freezed
          ? _value.last5
          : last5 // ignore: cast_nullable_to_non_nullable
              as Last5,
      recentLeagueMatches: recentLeagueMatches == freezed
          ? _value.recentLeagueMatches
          : recentLeagueMatches // ignore: cast_nullable_to_non_nullable
              as RecentLeagueMatches?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team extends _Team {
  const _$_Team(
      {this.id = 0,
      this.name = '',
      this.logo = '',
      @JsonKey(name: 'last_5') required this.last5,
      @JsonKey(name: 'league') this.recentLeagueMatches})
      : super._();

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @JsonKey()
  @override
  final double? id;
  @JsonKey()
  @override
  final String? name;
  @JsonKey()
  @override
  final String? logo;
  @override
  @JsonKey(name: 'last_5')
  final Last5 last5;
  @override
  @JsonKey(name: 'league')
  final RecentLeagueMatches? recentLeagueMatches;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, logo: $logo, last5: $last5, recentLeagueMatches: $recentLeagueMatches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Team &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.last5, last5) &&
            const DeepCollectionEquality()
                .equals(other.recentLeagueMatches, recentLeagueMatches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(last5),
      const DeepCollectionEquality().hash(recentLeagueMatches));

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(this);
  }
}

abstract class _Team extends Team {
  const factory _Team(
          {double? id,
          String? name,
          String? logo,
          @JsonKey(name: 'last_5') required Last5 last5,
          @JsonKey(name: 'league') RecentLeagueMatches? recentLeagueMatches}) =
      _$_Team;
  const _Team._() : super._();

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  double? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'last_5')
  Last5 get last5;
  @override
  @JsonKey(name: 'league')
  RecentLeagueMatches? get recentLeagueMatches;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith => throw _privateConstructorUsedError;
}

Last5 _$Last5FromJson(Map<String, dynamic> json) {
  return _Last5.fromJson(json);
}

/// @nodoc
class _$Last5TearOff {
  const _$Last5TearOff();

  _Last5 call(
      {@JsonKey(name: 'form') String? formPercentage = '',
      @JsonKey(name: 'att') String? attPercentage = '',
      @JsonKey(name: 'def') String? defPercentage = '',
      @JsonKey(name: 'goals') GoalsForAgainst? goalsForAgainst}) {
    return _Last5(
      formPercentage: formPercentage,
      attPercentage: attPercentage,
      defPercentage: defPercentage,
      goalsForAgainst: goalsForAgainst,
    );
  }

  Last5 fromJson(Map<String, Object?> json) {
    return Last5.fromJson(json);
  }
}

/// @nodoc
const $Last5 = _$Last5TearOff();

/// @nodoc
mixin _$Last5 {
  @JsonKey(name: 'form')
  String? get formPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'att')
  String? get attPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'def')
  String? get defPercentage =>
      throw _privateConstructorUsedError; //ignoring what's left here
  @JsonKey(name: 'goals')
  GoalsForAgainst? get goalsForAgainst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Last5CopyWith<Last5> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Last5CopyWith<$Res> {
  factory $Last5CopyWith(Last5 value, $Res Function(Last5) then) =
      _$Last5CopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'form') String? formPercentage,
      @JsonKey(name: 'att') String? attPercentage,
      @JsonKey(name: 'def') String? defPercentage,
      @JsonKey(name: 'goals') GoalsForAgainst? goalsForAgainst});

  $GoalsForAgainstCopyWith<$Res>? get goalsForAgainst;
}

/// @nodoc
class _$Last5CopyWithImpl<$Res> implements $Last5CopyWith<$Res> {
  _$Last5CopyWithImpl(this._value, this._then);

  final Last5 _value;
  // ignore: unused_field
  final $Res Function(Last5) _then;

  @override
  $Res call({
    Object? formPercentage = freezed,
    Object? attPercentage = freezed,
    Object? defPercentage = freezed,
    Object? goalsForAgainst = freezed,
  }) {
    return _then(_value.copyWith(
      formPercentage: formPercentage == freezed
          ? _value.formPercentage
          : formPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      attPercentage: attPercentage == freezed
          ? _value.attPercentage
          : attPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      defPercentage: defPercentage == freezed
          ? _value.defPercentage
          : defPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      goalsForAgainst: goalsForAgainst == freezed
          ? _value.goalsForAgainst
          : goalsForAgainst // ignore: cast_nullable_to_non_nullable
              as GoalsForAgainst?,
    ));
  }

  @override
  $GoalsForAgainstCopyWith<$Res>? get goalsForAgainst {
    if (_value.goalsForAgainst == null) {
      return null;
    }

    return $GoalsForAgainstCopyWith<$Res>(_value.goalsForAgainst!, (value) {
      return _then(_value.copyWith(goalsForAgainst: value));
    });
  }
}

/// @nodoc
abstract class _$Last5CopyWith<$Res> implements $Last5CopyWith<$Res> {
  factory _$Last5CopyWith(_Last5 value, $Res Function(_Last5) then) =
      __$Last5CopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'form') String? formPercentage,
      @JsonKey(name: 'att') String? attPercentage,
      @JsonKey(name: 'def') String? defPercentage,
      @JsonKey(name: 'goals') GoalsForAgainst? goalsForAgainst});

  @override
  $GoalsForAgainstCopyWith<$Res>? get goalsForAgainst;
}

/// @nodoc
class __$Last5CopyWithImpl<$Res> extends _$Last5CopyWithImpl<$Res>
    implements _$Last5CopyWith<$Res> {
  __$Last5CopyWithImpl(_Last5 _value, $Res Function(_Last5) _then)
      : super(_value, (v) => _then(v as _Last5));

  @override
  _Last5 get _value => super._value as _Last5;

  @override
  $Res call({
    Object? formPercentage = freezed,
    Object? attPercentage = freezed,
    Object? defPercentage = freezed,
    Object? goalsForAgainst = freezed,
  }) {
    return _then(_Last5(
      formPercentage: formPercentage == freezed
          ? _value.formPercentage
          : formPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      attPercentage: attPercentage == freezed
          ? _value.attPercentage
          : attPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      defPercentage: defPercentage == freezed
          ? _value.defPercentage
          : defPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      goalsForAgainst: goalsForAgainst == freezed
          ? _value.goalsForAgainst
          : goalsForAgainst // ignore: cast_nullable_to_non_nullable
              as GoalsForAgainst?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Last5 extends _Last5 {
  const _$_Last5(
      {@JsonKey(name: 'form') this.formPercentage = '',
      @JsonKey(name: 'att') this.attPercentage = '',
      @JsonKey(name: 'def') this.defPercentage = '',
      @JsonKey(name: 'goals') this.goalsForAgainst})
      : super._();

  factory _$_Last5.fromJson(Map<String, dynamic> json) =>
      _$$_Last5FromJson(json);

  @override
  @JsonKey(name: 'form')
  final String? formPercentage;
  @override
  @JsonKey(name: 'att')
  final String? attPercentage;
  @override
  @JsonKey(name: 'def')
  final String? defPercentage;
  @override //ignoring what's left here
  @JsonKey(name: 'goals')
  final GoalsForAgainst? goalsForAgainst;

  @override
  String toString() {
    return 'Last5(formPercentage: $formPercentage, attPercentage: $attPercentage, defPercentage: $defPercentage, goalsForAgainst: $goalsForAgainst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Last5 &&
            const DeepCollectionEquality()
                .equals(other.formPercentage, formPercentage) &&
            const DeepCollectionEquality()
                .equals(other.attPercentage, attPercentage) &&
            const DeepCollectionEquality()
                .equals(other.defPercentage, defPercentage) &&
            const DeepCollectionEquality()
                .equals(other.goalsForAgainst, goalsForAgainst));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formPercentage),
      const DeepCollectionEquality().hash(attPercentage),
      const DeepCollectionEquality().hash(defPercentage),
      const DeepCollectionEquality().hash(goalsForAgainst));

  @JsonKey(ignore: true)
  @override
  _$Last5CopyWith<_Last5> get copyWith =>
      __$Last5CopyWithImpl<_Last5>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Last5ToJson(this);
  }
}

abstract class _Last5 extends Last5 {
  const factory _Last5(
      {@JsonKey(name: 'form') String? formPercentage,
      @JsonKey(name: 'att') String? attPercentage,
      @JsonKey(name: 'def') String? defPercentage,
      @JsonKey(name: 'goals') GoalsForAgainst? goalsForAgainst}) = _$_Last5;
  const _Last5._() : super._();

  factory _Last5.fromJson(Map<String, dynamic> json) = _$_Last5.fromJson;

  @override
  @JsonKey(name: 'form')
  String? get formPercentage;
  @override
  @JsonKey(name: 'att')
  String? get attPercentage;
  @override
  @JsonKey(name: 'def')
  String? get defPercentage;
  @override //ignoring what's left here
  @JsonKey(name: 'goals')
  GoalsForAgainst? get goalsForAgainst;
  @override
  @JsonKey(ignore: true)
  _$Last5CopyWith<_Last5> get copyWith => throw _privateConstructorUsedError;
}

GoalsForAgainst _$GoalsForAgainstFromJson(Map<String, dynamic> json) {
  return _GoalsForAgainst.fromJson(json);
}

/// @nodoc
class _$GoalsForAgainstTearOff {
  const _$GoalsForAgainstTearOff();

  _GoalsForAgainst call(
      {@JsonKey(name: 'for') required GoalsFA? goalsFor,
      @JsonKey(name: 'against') required GoalsFA? goalsAgainst}) {
    return _GoalsForAgainst(
      goalsFor: goalsFor,
      goalsAgainst: goalsAgainst,
    );
  }

  GoalsForAgainst fromJson(Map<String, Object?> json) {
    return GoalsForAgainst.fromJson(json);
  }
}

/// @nodoc
const $GoalsForAgainst = _$GoalsForAgainstTearOff();

/// @nodoc
mixin _$GoalsForAgainst {
  @JsonKey(name: 'for')
  GoalsFA? get goalsFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'against')
  GoalsFA? get goalsAgainst => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsForAgainstCopyWith<GoalsForAgainst> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsForAgainstCopyWith<$Res> {
  factory $GoalsForAgainstCopyWith(
          GoalsForAgainst value, $Res Function(GoalsForAgainst) then) =
      _$GoalsForAgainstCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'for') GoalsFA? goalsFor,
      @JsonKey(name: 'against') GoalsFA? goalsAgainst});

  $GoalsFACopyWith<$Res>? get goalsFor;
  $GoalsFACopyWith<$Res>? get goalsAgainst;
}

/// @nodoc
class _$GoalsForAgainstCopyWithImpl<$Res>
    implements $GoalsForAgainstCopyWith<$Res> {
  _$GoalsForAgainstCopyWithImpl(this._value, this._then);

  final GoalsForAgainst _value;
  // ignore: unused_field
  final $Res Function(GoalsForAgainst) _then;

  @override
  $Res call({
    Object? goalsFor = freezed,
    Object? goalsAgainst = freezed,
  }) {
    return _then(_value.copyWith(
      goalsFor: goalsFor == freezed
          ? _value.goalsFor
          : goalsFor // ignore: cast_nullable_to_non_nullable
              as GoalsFA?,
      goalsAgainst: goalsAgainst == freezed
          ? _value.goalsAgainst
          : goalsAgainst // ignore: cast_nullable_to_non_nullable
              as GoalsFA?,
    ));
  }

  @override
  $GoalsFACopyWith<$Res>? get goalsFor {
    if (_value.goalsFor == null) {
      return null;
    }

    return $GoalsFACopyWith<$Res>(_value.goalsFor!, (value) {
      return _then(_value.copyWith(goalsFor: value));
    });
  }

  @override
  $GoalsFACopyWith<$Res>? get goalsAgainst {
    if (_value.goalsAgainst == null) {
      return null;
    }

    return $GoalsFACopyWith<$Res>(_value.goalsAgainst!, (value) {
      return _then(_value.copyWith(goalsAgainst: value));
    });
  }
}

/// @nodoc
abstract class _$GoalsForAgainstCopyWith<$Res>
    implements $GoalsForAgainstCopyWith<$Res> {
  factory _$GoalsForAgainstCopyWith(
          _GoalsForAgainst value, $Res Function(_GoalsForAgainst) then) =
      __$GoalsForAgainstCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'for') GoalsFA? goalsFor,
      @JsonKey(name: 'against') GoalsFA? goalsAgainst});

  @override
  $GoalsFACopyWith<$Res>? get goalsFor;
  @override
  $GoalsFACopyWith<$Res>? get goalsAgainst;
}

/// @nodoc
class __$GoalsForAgainstCopyWithImpl<$Res>
    extends _$GoalsForAgainstCopyWithImpl<$Res>
    implements _$GoalsForAgainstCopyWith<$Res> {
  __$GoalsForAgainstCopyWithImpl(
      _GoalsForAgainst _value, $Res Function(_GoalsForAgainst) _then)
      : super(_value, (v) => _then(v as _GoalsForAgainst));

  @override
  _GoalsForAgainst get _value => super._value as _GoalsForAgainst;

  @override
  $Res call({
    Object? goalsFor = freezed,
    Object? goalsAgainst = freezed,
  }) {
    return _then(_GoalsForAgainst(
      goalsFor: goalsFor == freezed
          ? _value.goalsFor
          : goalsFor // ignore: cast_nullable_to_non_nullable
              as GoalsFA?,
      goalsAgainst: goalsAgainst == freezed
          ? _value.goalsAgainst
          : goalsAgainst // ignore: cast_nullable_to_non_nullable
              as GoalsFA?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoalsForAgainst extends _GoalsForAgainst {
  const _$_GoalsForAgainst(
      {@JsonKey(name: 'for') required this.goalsFor,
      @JsonKey(name: 'against') required this.goalsAgainst})
      : super._();

  factory _$_GoalsForAgainst.fromJson(Map<String, dynamic> json) =>
      _$$_GoalsForAgainstFromJson(json);

  @override
  @JsonKey(name: 'for')
  final GoalsFA? goalsFor;
  @override
  @JsonKey(name: 'against')
  final GoalsFA? goalsAgainst;

  @override
  String toString() {
    return 'GoalsForAgainst(goalsFor: $goalsFor, goalsAgainst: $goalsAgainst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoalsForAgainst &&
            const DeepCollectionEquality().equals(other.goalsFor, goalsFor) &&
            const DeepCollectionEquality()
                .equals(other.goalsAgainst, goalsAgainst));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(goalsFor),
      const DeepCollectionEquality().hash(goalsAgainst));

  @JsonKey(ignore: true)
  @override
  _$GoalsForAgainstCopyWith<_GoalsForAgainst> get copyWith =>
      __$GoalsForAgainstCopyWithImpl<_GoalsForAgainst>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalsForAgainstToJson(this);
  }
}

abstract class _GoalsForAgainst extends GoalsForAgainst {
  const factory _GoalsForAgainst(
          {@JsonKey(name: 'for') required GoalsFA? goalsFor,
          @JsonKey(name: 'against') required GoalsFA? goalsAgainst}) =
      _$_GoalsForAgainst;
  const _GoalsForAgainst._() : super._();

  factory _GoalsForAgainst.fromJson(Map<String, dynamic> json) =
      _$_GoalsForAgainst.fromJson;

  @override
  @JsonKey(name: 'for')
  GoalsFA? get goalsFor;
  @override
  @JsonKey(name: 'against')
  GoalsFA? get goalsAgainst;
  @override
  @JsonKey(ignore: true)
  _$GoalsForAgainstCopyWith<_GoalsForAgainst> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalsFA _$GoalsFAFromJson(Map<String, dynamic> json) {
  return _GoalsFA.fromJson(json);
}

/// @nodoc
class _$GoalsFATearOff {
  const _$GoalsFATearOff();

  _GoalsFA call({@JsonKey(name: 'total') num? total = 0}) {
    return _GoalsFA(
      total: total,
    );
  }

  GoalsFA fromJson(Map<String, Object?> json) {
    return GoalsFA.fromJson(json);
  }
}

/// @nodoc
const $GoalsFA = _$GoalsFATearOff();

/// @nodoc
mixin _$GoalsFA {
  @JsonKey(name: 'total')
  num? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsFACopyWith<GoalsFA> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsFACopyWith<$Res> {
  factory $GoalsFACopyWith(GoalsFA value, $Res Function(GoalsFA) then) =
      _$GoalsFACopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'total') num? total});
}

/// @nodoc
class _$GoalsFACopyWithImpl<$Res> implements $GoalsFACopyWith<$Res> {
  _$GoalsFACopyWithImpl(this._value, this._then);

  final GoalsFA _value;
  // ignore: unused_field
  final $Res Function(GoalsFA) _then;

  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$GoalsFACopyWith<$Res> implements $GoalsFACopyWith<$Res> {
  factory _$GoalsFACopyWith(_GoalsFA value, $Res Function(_GoalsFA) then) =
      __$GoalsFACopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'total') num? total});
}

/// @nodoc
class __$GoalsFACopyWithImpl<$Res> extends _$GoalsFACopyWithImpl<$Res>
    implements _$GoalsFACopyWith<$Res> {
  __$GoalsFACopyWithImpl(_GoalsFA _value, $Res Function(_GoalsFA) _then)
      : super(_value, (v) => _then(v as _GoalsFA));

  @override
  _GoalsFA get _value => super._value as _GoalsFA;

  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_GoalsFA(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoalsFA extends _GoalsFA {
  const _$_GoalsFA({@JsonKey(name: 'total') this.total = 0}) : super._();

  factory _$_GoalsFA.fromJson(Map<String, dynamic> json) =>
      _$$_GoalsFAFromJson(json);

  @override
  @JsonKey(name: 'total')
  final num? total;

  @override
  String toString() {
    return 'GoalsFA(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoalsFA &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$GoalsFACopyWith<_GoalsFA> get copyWith =>
      __$GoalsFACopyWithImpl<_GoalsFA>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalsFAToJson(this);
  }
}

abstract class _GoalsFA extends GoalsFA {
  const factory _GoalsFA({@JsonKey(name: 'total') num? total}) = _$_GoalsFA;
  const _GoalsFA._() : super._();

  factory _GoalsFA.fromJson(Map<String, dynamic> json) = _$_GoalsFA.fromJson;

  @override
  @JsonKey(name: 'total')
  num? get total;
  @override
  @JsonKey(ignore: true)
  _$GoalsFACopyWith<_GoalsFA> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentLeagueMatches _$RecentLeagueMatchesFromJson(Map<String, dynamic> json) {
  return _RecentLeagueMatches.fromJson(json);
}

/// @nodoc
class _$RecentLeagueMatchesTearOff {
  const _$RecentLeagueMatchesTearOff();

  _RecentLeagueMatches call({String? form = ''}) {
    return _RecentLeagueMatches(
      form: form,
    );
  }

  RecentLeagueMatches fromJson(Map<String, Object?> json) {
    return RecentLeagueMatches.fromJson(json);
  }
}

/// @nodoc
const $RecentLeagueMatches = _$RecentLeagueMatchesTearOff();

/// @nodoc
mixin _$RecentLeagueMatches {
  String? get form => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentLeagueMatchesCopyWith<RecentLeagueMatches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentLeagueMatchesCopyWith<$Res> {
  factory $RecentLeagueMatchesCopyWith(
          RecentLeagueMatches value, $Res Function(RecentLeagueMatches) then) =
      _$RecentLeagueMatchesCopyWithImpl<$Res>;
  $Res call({String? form});
}

/// @nodoc
class _$RecentLeagueMatchesCopyWithImpl<$Res>
    implements $RecentLeagueMatchesCopyWith<$Res> {
  _$RecentLeagueMatchesCopyWithImpl(this._value, this._then);

  final RecentLeagueMatches _value;
  // ignore: unused_field
  final $Res Function(RecentLeagueMatches) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RecentLeagueMatchesCopyWith<$Res>
    implements $RecentLeagueMatchesCopyWith<$Res> {
  factory _$RecentLeagueMatchesCopyWith(_RecentLeagueMatches value,
          $Res Function(_RecentLeagueMatches) then) =
      __$RecentLeagueMatchesCopyWithImpl<$Res>;
  @override
  $Res call({String? form});
}

/// @nodoc
class __$RecentLeagueMatchesCopyWithImpl<$Res>
    extends _$RecentLeagueMatchesCopyWithImpl<$Res>
    implements _$RecentLeagueMatchesCopyWith<$Res> {
  __$RecentLeagueMatchesCopyWithImpl(
      _RecentLeagueMatches _value, $Res Function(_RecentLeagueMatches) _then)
      : super(_value, (v) => _then(v as _RecentLeagueMatches));

  @override
  _RecentLeagueMatches get _value => super._value as _RecentLeagueMatches;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_RecentLeagueMatches(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentLeagueMatches extends _RecentLeagueMatches {
  const _$_RecentLeagueMatches({this.form = ''}) : super._();

  factory _$_RecentLeagueMatches.fromJson(Map<String, dynamic> json) =>
      _$$_RecentLeagueMatchesFromJson(json);

  @JsonKey()
  @override
  final String? form;

  @override
  String toString() {
    return 'RecentLeagueMatches(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecentLeagueMatches &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$RecentLeagueMatchesCopyWith<_RecentLeagueMatches> get copyWith =>
      __$RecentLeagueMatchesCopyWithImpl<_RecentLeagueMatches>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentLeagueMatchesToJson(this);
  }
}

abstract class _RecentLeagueMatches extends RecentLeagueMatches {
  const factory _RecentLeagueMatches({String? form}) = _$_RecentLeagueMatches;
  const _RecentLeagueMatches._() : super._();

  factory _RecentLeagueMatches.fromJson(Map<String, dynamic> json) =
      _$_RecentLeagueMatches.fromJson;

  @override
  String? get form;
  @override
  @JsonKey(ignore: true)
  _$RecentLeagueMatchesCopyWith<_RecentLeagueMatches> get copyWith =>
      throw _privateConstructorUsedError;
}
