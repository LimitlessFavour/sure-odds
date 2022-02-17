// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leagues.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Leagues _$LeaguesFromJson(Map<String, dynamic> json) {
  return _Leagues.fromJson(json);
}

/// @nodoc
class _$LeaguesTearOff {
  const _$LeaguesTearOff();

  _Leagues call(
      {@JsonKey(name: 'epl') List<Prediction> epl = const <Prediction>[],
      @JsonKey(name: 'laliga') List<Prediction> laliga = const <Prediction>[],
      @JsonKey(name: 'bund') List<Prediction> bundesliga = const <Prediction>[],
      @JsonKey(name: 'seria') List<Prediction> seriaA = const <Prediction>[]}) {
    return _Leagues(
      epl: epl,
      laliga: laliga,
      bundesliga: bundesliga,
      seriaA: seriaA,
    );
  }

  Leagues fromJson(Map<String, Object?> json) {
    return Leagues.fromJson(json);
  }
}

/// @nodoc
const $Leagues = _$LeaguesTearOff();

/// @nodoc
mixin _$Leagues {
  @JsonKey(name: 'epl')
  List<Prediction> get epl => throw _privateConstructorUsedError;
  @JsonKey(name: 'laliga')
  List<Prediction> get laliga => throw _privateConstructorUsedError;
  @JsonKey(name: 'bund')
  List<Prediction> get bundesliga => throw _privateConstructorUsedError;
  @JsonKey(name: 'seria')
  List<Prediction> get seriaA => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaguesCopyWith<Leagues> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaguesCopyWith<$Res> {
  factory $LeaguesCopyWith(Leagues value, $Res Function(Leagues) then) =
      _$LeaguesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'epl') List<Prediction> epl,
      @JsonKey(name: 'laliga') List<Prediction> laliga,
      @JsonKey(name: 'bund') List<Prediction> bundesliga,
      @JsonKey(name: 'seria') List<Prediction> seriaA});
}

/// @nodoc
class _$LeaguesCopyWithImpl<$Res> implements $LeaguesCopyWith<$Res> {
  _$LeaguesCopyWithImpl(this._value, this._then);

  final Leagues _value;
  // ignore: unused_field
  final $Res Function(Leagues) _then;

  @override
  $Res call({
    Object? epl = freezed,
    Object? laliga = freezed,
    Object? bundesliga = freezed,
    Object? seriaA = freezed,
  }) {
    return _then(_value.copyWith(
      epl: epl == freezed
          ? _value.epl
          : epl // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      laliga: laliga == freezed
          ? _value.laliga
          : laliga // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      bundesliga: bundesliga == freezed
          ? _value.bundesliga
          : bundesliga // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      seriaA: seriaA == freezed
          ? _value.seriaA
          : seriaA // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
    ));
  }
}

/// @nodoc
abstract class _$LeaguesCopyWith<$Res> implements $LeaguesCopyWith<$Res> {
  factory _$LeaguesCopyWith(_Leagues value, $Res Function(_Leagues) then) =
      __$LeaguesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'epl') List<Prediction> epl,
      @JsonKey(name: 'laliga') List<Prediction> laliga,
      @JsonKey(name: 'bund') List<Prediction> bundesliga,
      @JsonKey(name: 'seria') List<Prediction> seriaA});
}

/// @nodoc
class __$LeaguesCopyWithImpl<$Res> extends _$LeaguesCopyWithImpl<$Res>
    implements _$LeaguesCopyWith<$Res> {
  __$LeaguesCopyWithImpl(_Leagues _value, $Res Function(_Leagues) _then)
      : super(_value, (v) => _then(v as _Leagues));

  @override
  _Leagues get _value => super._value as _Leagues;

  @override
  $Res call({
    Object? epl = freezed,
    Object? laliga = freezed,
    Object? bundesliga = freezed,
    Object? seriaA = freezed,
  }) {
    return _then(_Leagues(
      epl: epl == freezed
          ? _value.epl
          : epl // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      laliga: laliga == freezed
          ? _value.laliga
          : laliga // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      bundesliga: bundesliga == freezed
          ? _value.bundesliga
          : bundesliga // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
      seriaA: seriaA == freezed
          ? _value.seriaA
          : seriaA // ignore: cast_nullable_to_non_nullable
              as List<Prediction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Leagues extends _Leagues {
  const _$_Leagues(
      {@JsonKey(name: 'epl') this.epl = const <Prediction>[],
      @JsonKey(name: 'laliga') this.laliga = const <Prediction>[],
      @JsonKey(name: 'bund') this.bundesliga = const <Prediction>[],
      @JsonKey(name: 'seria') this.seriaA = const <Prediction>[]})
      : super._();

  factory _$_Leagues.fromJson(Map<String, dynamic> json) =>
      _$$_LeaguesFromJson(json);

  @override
  @JsonKey(name: 'epl')
  final List<Prediction> epl;
  @override
  @JsonKey(name: 'laliga')
  final List<Prediction> laliga;
  @override
  @JsonKey(name: 'bund')
  final List<Prediction> bundesliga;
  @override
  @JsonKey(name: 'seria')
  final List<Prediction> seriaA;

  @override
  String toString() {
    return 'Leagues(epl: $epl, laliga: $laliga, bundesliga: $bundesliga, seriaA: $seriaA)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Leagues &&
            const DeepCollectionEquality().equals(other.epl, epl) &&
            const DeepCollectionEquality().equals(other.laliga, laliga) &&
            const DeepCollectionEquality()
                .equals(other.bundesliga, bundesliga) &&
            const DeepCollectionEquality().equals(other.seriaA, seriaA));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(epl),
      const DeepCollectionEquality().hash(laliga),
      const DeepCollectionEquality().hash(bundesliga),
      const DeepCollectionEquality().hash(seriaA));

  @JsonKey(ignore: true)
  @override
  _$LeaguesCopyWith<_Leagues> get copyWith =>
      __$LeaguesCopyWithImpl<_Leagues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaguesToJson(this);
  }
}

abstract class _Leagues extends Leagues {
  const factory _Leagues(
      {@JsonKey(name: 'epl') List<Prediction> epl,
      @JsonKey(name: 'laliga') List<Prediction> laliga,
      @JsonKey(name: 'bund') List<Prediction> bundesliga,
      @JsonKey(name: 'seria') List<Prediction> seriaA}) = _$_Leagues;
  const _Leagues._() : super._();

  factory _Leagues.fromJson(Map<String, dynamic> json) = _$_Leagues.fromJson;

  @override
  @JsonKey(name: 'epl')
  List<Prediction> get epl;
  @override
  @JsonKey(name: 'laliga')
  List<Prediction> get laliga;
  @override
  @JsonKey(name: 'bund')
  List<Prediction> get bundesliga;
  @override
  @JsonKey(name: 'seria')
  List<Prediction> get seriaA;
  @override
  @JsonKey(ignore: true)
  _$LeaguesCopyWith<_Leagues> get copyWith =>
      throw _privateConstructorUsedError;
}
