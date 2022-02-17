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

ApiResponseModel _$ApiResponseModelFromJson(Map<String, dynamic> json) {
  return _ApiResponseModel.fromJson(json);
}

/// @nodoc
class _$ApiResponseModelTearOff {
  const _$ApiResponseModelTearOff();

  _ApiResponseModel call(
      {required int status,
      String message = '',
      @JsonKey(name: 'data') Leagues? leagues}) {
    return _ApiResponseModel(
      status: status,
      message: message,
      leagues: leagues,
    );
  }

  ApiResponseModel fromJson(Map<String, Object?> json) {
    return ApiResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ApiResponseModel = _$ApiResponseModelTearOff();

/// @nodoc
mixin _$ApiResponseModel {
  int get status => throw _privateConstructorUsedError; //1 for good, 0 for issh
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Leagues? get leagues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseModelCopyWith<ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<$Res> {
  factory $ApiResponseModelCopyWith(
          ApiResponseModel value, $Res Function(ApiResponseModel) then) =
      _$ApiResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int status, String message, @JsonKey(name: 'data') Leagues? leagues});

  $LeaguesCopyWith<$Res>? get leagues;
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  final ApiResponseModel _value;
  // ignore: unused_field
  final $Res Function(ApiResponseModel) _then;

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
abstract class _$ApiResponseModelCopyWith<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  factory _$ApiResponseModelCopyWith(
          _ApiResponseModel value, $Res Function(_ApiResponseModel) then) =
      __$ApiResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int status, String message, @JsonKey(name: 'data') Leagues? leagues});

  @override
  $LeaguesCopyWith<$Res>? get leagues;
}

/// @nodoc
class __$ApiResponseModelCopyWithImpl<$Res>
    extends _$ApiResponseModelCopyWithImpl<$Res>
    implements _$ApiResponseModelCopyWith<$Res> {
  __$ApiResponseModelCopyWithImpl(
      _ApiResponseModel _value, $Res Function(_ApiResponseModel) _then)
      : super(_value, (v) => _then(v as _ApiResponseModel));

  @override
  _ApiResponseModel get _value => super._value as _ApiResponseModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? leagues = freezed,
  }) {
    return _then(_ApiResponseModel(
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
class _$_ApiResponseModel implements _ApiResponseModel {
  _$_ApiResponseModel(
      {required this.status,
      this.message = '',
      @JsonKey(name: 'data') this.leagues});

  factory _$_ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseModelFromJson(json);

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
    return 'ApiResponseModel(status: $status, message: $message, leagues: $leagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponseModel &&
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
  _$ApiResponseModelCopyWith<_ApiResponseModel> get copyWith =>
      __$ApiResponseModelCopyWithImpl<_ApiResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseModelToJson(this);
  }
}

abstract class _ApiResponseModel implements ApiResponseModel {
  factory _ApiResponseModel(
      {required int status,
      String message,
      @JsonKey(name: 'data') Leagues? leagues}) = _$_ApiResponseModel;

  factory _ApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseModel.fromJson;

  @override
  int get status;
  @override //1 for good, 0 for issh
  String get message;
  @override
  @JsonKey(name: 'data')
  Leagues? get leagues;
  @override
  @JsonKey(ignore: true)
  _$ApiResponseModelCopyWith<_ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
