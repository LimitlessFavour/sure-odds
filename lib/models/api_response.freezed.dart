// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredictionsResponseModel _$PredictionsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PredictionsResponseModel.fromJson(json);
}

/// @nodoc
class _$PredictionsResponseModelTearOff {
  const _$PredictionsResponseModelTearOff();

  _PredictionsResponseModel call(
      {required int status,
      String message = '',
      @JsonKey(name: 'data') Leagues? leagues}) {
    return _PredictionsResponseModel(
      status: status,
      message: message,
      leagues: leagues,
    );
  }

  PredictionsResponseModel fromJson(Map<String, Object?> json) {
    return PredictionsResponseModel.fromJson(json);
  }
}

/// @nodoc
const $PredictionsResponseModel = _$PredictionsResponseModelTearOff();

/// @nodoc
mixin _$PredictionsResponseModel {
  int get status => throw _privateConstructorUsedError; //1 for good, 0 for issh
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Leagues? get leagues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionsResponseModelCopyWith<PredictionsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionsResponseModelCopyWith<$Res> {
  factory $PredictionsResponseModelCopyWith(PredictionsResponseModel value,
          $Res Function(PredictionsResponseModel) then) =
      _$PredictionsResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int status, String message, @JsonKey(name: 'data') Leagues? leagues});

  $LeaguesCopyWith<$Res>? get leagues;
}

/// @nodoc
class _$PredictionsResponseModelCopyWithImpl<$Res>
    implements $PredictionsResponseModelCopyWith<$Res> {
  _$PredictionsResponseModelCopyWithImpl(this._value, this._then);

  final PredictionsResponseModel _value;
  // ignore: unused_field
  final $Res Function(PredictionsResponseModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? leagues = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      leagues: leagues == freezed
          ? _value.leagues
          : leagues // ignore: cast_nullable_to_non_nullable
              as Leagues?,
    ));
  }

  @override
  $LeaguesCopyWith<$Res>? get leagues {
    if (_value.leagues == null) {
      return null;
    }

    return $LeaguesCopyWith<$Res>(_value.leagues!, (value) {
      return _then(_value.copyWith(leagues: value));
    });
  }
}

/// @nodoc
abstract class _$PredictionsResponseModelCopyWith<$Res>
    implements $PredictionsResponseModelCopyWith<$Res> {
  factory _$PredictionsResponseModelCopyWith(_PredictionsResponseModel value,
          $Res Function(_PredictionsResponseModel) then) =
      __$PredictionsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int status, String message, @JsonKey(name: 'data') Leagues? leagues});

  @override
  $LeaguesCopyWith<$Res>? get leagues;
}

/// @nodoc
class __$PredictionsResponseModelCopyWithImpl<$Res>
    extends _$PredictionsResponseModelCopyWithImpl<$Res>
    implements _$PredictionsResponseModelCopyWith<$Res> {
  __$PredictionsResponseModelCopyWithImpl(_PredictionsResponseModel _value,
      $Res Function(_PredictionsResponseModel) _then)
      : super(_value, (v) => _then(v as _PredictionsResponseModel));

  @override
  _PredictionsResponseModel get _value =>
      super._value as _PredictionsResponseModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? leagues = freezed,
  }) {
    return _then(_PredictionsResponseModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      leagues: leagues == freezed
          ? _value.leagues
          : leagues // ignore: cast_nullable_to_non_nullable
              as Leagues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PredictionsResponseModel implements _PredictionsResponseModel {
  _$_PredictionsResponseModel(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') this.leagues});

  factory _$_PredictionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionsResponseModelFromJson(json);

  @override
  final int status;
  @JsonKey()
  @override //1 for good, 0 for issh
  final String message;
  @override
  @JsonKey(name: 'data')
  final Leagues? leagues;

  @override
  String toString() {
    return 'PredictionsResponseModel(status: $status, message: $message, leagues: $leagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PredictionsResponseModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.leagues, leagues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(leagues));

  @JsonKey(ignore: true)
  @override
  _$PredictionsResponseModelCopyWith<_PredictionsResponseModel> get copyWith =>
      __$PredictionsResponseModelCopyWithImpl<_PredictionsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionsResponseModelToJson(this);
  }
}

abstract class _PredictionsResponseModel implements PredictionsResponseModel {
  factory _PredictionsResponseModel(
      {required int status,
      String message,
      @JsonKey(name: 'data') Leagues? leagues}) = _$_PredictionsResponseModel;

  factory _PredictionsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PredictionsResponseModel.fromJson;

  @override
  int get status;
  @override //1 for good, 0 for issh
  String get message;
  @override
  @JsonKey(name: 'data')
  Leagues? get leagues;
  @override
  @JsonKey(ignore: true)
  _$PredictionsResponseModelCopyWith<_PredictionsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
