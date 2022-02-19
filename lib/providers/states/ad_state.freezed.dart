// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannerAdStateTearOff {
  const _$BannerAdStateTearOff();

  UNINITIALIZED_BANNER uninitialized() {
    return const UNINITIALIZED_BANNER();
  }

  LOADING_BANNER loading() {
    return const LOADING_BANNER();
  }

  LOADED_BANNER loaded({required BannerAd bannerAd}) {
    return LOADED_BANNER(
      bannerAd: bannerAd,
    );
  }

  FAILED_BANNER failed({required String reason}) {
    return FAILED_BANNER(
      reason: reason,
    );
  }
}

/// @nodoc
const $BannerAdState = _$BannerAdStateTearOff();

/// @nodoc
mixin _$BannerAdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(String reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_BANNER value) uninitialized,
    required TResult Function(LOADING_BANNER value) loading,
    required TResult Function(LOADED_BANNER value) loaded,
    required TResult Function(FAILED_BANNER value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerAdStateCopyWith<$Res> {
  factory $BannerAdStateCopyWith(
          BannerAdState value, $Res Function(BannerAdState) then) =
      _$BannerAdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BannerAdStateCopyWithImpl<$Res>
    implements $BannerAdStateCopyWith<$Res> {
  _$BannerAdStateCopyWithImpl(this._value, this._then);

  final BannerAdState _value;
  // ignore: unused_field
  final $Res Function(BannerAdState) _then;
}

/// @nodoc
abstract class $UNINITIALIZED_BANNERCopyWith<$Res> {
  factory $UNINITIALIZED_BANNERCopyWith(UNINITIALIZED_BANNER value,
          $Res Function(UNINITIALIZED_BANNER) then) =
      _$UNINITIALIZED_BANNERCopyWithImpl<$Res>;
}

/// @nodoc
class _$UNINITIALIZED_BANNERCopyWithImpl<$Res>
    extends _$BannerAdStateCopyWithImpl<$Res>
    implements $UNINITIALIZED_BANNERCopyWith<$Res> {
  _$UNINITIALIZED_BANNERCopyWithImpl(
      UNINITIALIZED_BANNER _value, $Res Function(UNINITIALIZED_BANNER) _then)
      : super(_value, (v) => _then(v as UNINITIALIZED_BANNER));

  @override
  UNINITIALIZED_BANNER get _value => super._value as UNINITIALIZED_BANNER;
}

/// @nodoc

class _$UNINITIALIZED_BANNER implements UNINITIALIZED_BANNER {
  const _$UNINITIALIZED_BANNER();

  @override
  String toString() {
    return 'BannerAdState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UNINITIALIZED_BANNER);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_BANNER value) uninitialized,
    required TResult Function(LOADING_BANNER value) loading,
    required TResult Function(LOADED_BANNER value) loaded,
    required TResult Function(FAILED_BANNER value) failed,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class UNINITIALIZED_BANNER implements BannerAdState {
  const factory UNINITIALIZED_BANNER() = _$UNINITIALIZED_BANNER;
}

/// @nodoc
abstract class $LOADING_BANNERCopyWith<$Res> {
  factory $LOADING_BANNERCopyWith(
          LOADING_BANNER value, $Res Function(LOADING_BANNER) then) =
      _$LOADING_BANNERCopyWithImpl<$Res>;
}

/// @nodoc
class _$LOADING_BANNERCopyWithImpl<$Res>
    extends _$BannerAdStateCopyWithImpl<$Res>
    implements $LOADING_BANNERCopyWith<$Res> {
  _$LOADING_BANNERCopyWithImpl(
      LOADING_BANNER _value, $Res Function(LOADING_BANNER) _then)
      : super(_value, (v) => _then(v as LOADING_BANNER));

  @override
  LOADING_BANNER get _value => super._value as LOADING_BANNER;
}

/// @nodoc

class _$LOADING_BANNER implements LOADING_BANNER {
  const _$LOADING_BANNER();

  @override
  String toString() {
    return 'BannerAdState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LOADING_BANNER);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_BANNER value) uninitialized,
    required TResult Function(LOADING_BANNER value) loading,
    required TResult Function(LOADED_BANNER value) loaded,
    required TResult Function(FAILED_BANNER value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LOADING_BANNER implements BannerAdState {
  const factory LOADING_BANNER() = _$LOADING_BANNER;
}

/// @nodoc
abstract class $LOADED_BANNERCopyWith<$Res> {
  factory $LOADED_BANNERCopyWith(
          LOADED_BANNER value, $Res Function(LOADED_BANNER) then) =
      _$LOADED_BANNERCopyWithImpl<$Res>;
  $Res call({BannerAd bannerAd});
}

/// @nodoc
class _$LOADED_BANNERCopyWithImpl<$Res>
    extends _$BannerAdStateCopyWithImpl<$Res>
    implements $LOADED_BANNERCopyWith<$Res> {
  _$LOADED_BANNERCopyWithImpl(
      LOADED_BANNER _value, $Res Function(LOADED_BANNER) _then)
      : super(_value, (v) => _then(v as LOADED_BANNER));

  @override
  LOADED_BANNER get _value => super._value as LOADED_BANNER;

  @override
  $Res call({
    Object? bannerAd = freezed,
  }) {
    return _then(LOADED_BANNER(
      bannerAd: bannerAd == freezed
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd,
    ));
  }
}

/// @nodoc

class _$LOADED_BANNER implements LOADED_BANNER {
  const _$LOADED_BANNER({required this.bannerAd});

  @override
  final BannerAd bannerAd;

  @override
  String toString() {
    return 'BannerAdState.loaded(bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LOADED_BANNER &&
            const DeepCollectionEquality().equals(other.bannerAd, bannerAd));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bannerAd));

  @JsonKey(ignore: true)
  @override
  $LOADED_BANNERCopyWith<LOADED_BANNER> get copyWith =>
      _$LOADED_BANNERCopyWithImpl<LOADED_BANNER>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return loaded(bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return loaded?.call(bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bannerAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_BANNER value) uninitialized,
    required TResult Function(LOADING_BANNER value) loading,
    required TResult Function(LOADED_BANNER value) loaded,
    required TResult Function(FAILED_BANNER value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LOADED_BANNER implements BannerAdState {
  const factory LOADED_BANNER({required BannerAd bannerAd}) = _$LOADED_BANNER;

  BannerAd get bannerAd;
  @JsonKey(ignore: true)
  $LOADED_BANNERCopyWith<LOADED_BANNER> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAILED_BANNERCopyWith<$Res> {
  factory $FAILED_BANNERCopyWith(
          FAILED_BANNER value, $Res Function(FAILED_BANNER) then) =
      _$FAILED_BANNERCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$FAILED_BANNERCopyWithImpl<$Res>
    extends _$BannerAdStateCopyWithImpl<$Res>
    implements $FAILED_BANNERCopyWith<$Res> {
  _$FAILED_BANNERCopyWithImpl(
      FAILED_BANNER _value, $Res Function(FAILED_BANNER) _then)
      : super(_value, (v) => _then(v as FAILED_BANNER));

  @override
  FAILED_BANNER get _value => super._value as FAILED_BANNER;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(FAILED_BANNER(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILED_BANNER implements FAILED_BANNER {
  const _$FAILED_BANNER({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'BannerAdState.failed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FAILED_BANNER &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $FAILED_BANNERCopyWith<FAILED_BANNER> get copyWith =>
      _$FAILED_BANNERCopyWithImpl<FAILED_BANNER>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(BannerAd bannerAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return failed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(BannerAd bannerAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_BANNER value) uninitialized,
    required TResult Function(LOADING_BANNER value) loading,
    required TResult Function(LOADED_BANNER value) loaded,
    required TResult Function(FAILED_BANNER value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_BANNER value)? uninitialized,
    TResult Function(LOADING_BANNER value)? loading,
    TResult Function(LOADED_BANNER value)? loaded,
    TResult Function(FAILED_BANNER value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FAILED_BANNER implements BannerAdState {
  const factory FAILED_BANNER({required String reason}) = _$FAILED_BANNER;

  String get reason;
  @JsonKey(ignore: true)
  $FAILED_BANNERCopyWith<FAILED_BANNER> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InterstitialAdStateTearOff {
  const _$InterstitialAdStateTearOff();

  UNINITIALIZED_INTERSTITIAL uninitialized() {
    return const UNINITIALIZED_INTERSTITIAL();
  }

  LOADING_INTERSTITIAL loading() {
    return const LOADING_INTERSTITIAL();
  }

  LOADED_INTERSTITIAL loaded({required InterstitialAd interstitialAd}) {
    return LOADED_INTERSTITIAL(
      interstitialAd: interstitialAd,
    );
  }

  FAILED_INTERSTITIAL failed({required String reason}) {
    return FAILED_INTERSTITIAL(
      reason: reason,
    );
  }
}

/// @nodoc
const $InterstitialAdState = _$InterstitialAdStateTearOff();

/// @nodoc
mixin _$InterstitialAdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(InterstitialAd interstitialAd) loaded,
    required TResult Function(String reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_INTERSTITIAL value) uninitialized,
    required TResult Function(LOADING_INTERSTITIAL value) loading,
    required TResult Function(LOADED_INTERSTITIAL value) loaded,
    required TResult Function(FAILED_INTERSTITIAL value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterstitialAdStateCopyWith<$Res> {
  factory $InterstitialAdStateCopyWith(
          InterstitialAdState value, $Res Function(InterstitialAdState) then) =
      _$InterstitialAdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InterstitialAdStateCopyWithImpl<$Res>
    implements $InterstitialAdStateCopyWith<$Res> {
  _$InterstitialAdStateCopyWithImpl(this._value, this._then);

  final InterstitialAdState _value;
  // ignore: unused_field
  final $Res Function(InterstitialAdState) _then;
}

/// @nodoc
abstract class $UNINITIALIZED_INTERSTITIALCopyWith<$Res> {
  factory $UNINITIALIZED_INTERSTITIALCopyWith(UNINITIALIZED_INTERSTITIAL value,
          $Res Function(UNINITIALIZED_INTERSTITIAL) then) =
      _$UNINITIALIZED_INTERSTITIALCopyWithImpl<$Res>;
}

/// @nodoc
class _$UNINITIALIZED_INTERSTITIALCopyWithImpl<$Res>
    extends _$InterstitialAdStateCopyWithImpl<$Res>
    implements $UNINITIALIZED_INTERSTITIALCopyWith<$Res> {
  _$UNINITIALIZED_INTERSTITIALCopyWithImpl(UNINITIALIZED_INTERSTITIAL _value,
      $Res Function(UNINITIALIZED_INTERSTITIAL) _then)
      : super(_value, (v) => _then(v as UNINITIALIZED_INTERSTITIAL));

  @override
  UNINITIALIZED_INTERSTITIAL get _value =>
      super._value as UNINITIALIZED_INTERSTITIAL;
}

/// @nodoc

class _$UNINITIALIZED_INTERSTITIAL implements UNINITIALIZED_INTERSTITIAL {
  const _$UNINITIALIZED_INTERSTITIAL();

  @override
  String toString() {
    return 'InterstitialAdState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UNINITIALIZED_INTERSTITIAL);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(InterstitialAd interstitialAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_INTERSTITIAL value) uninitialized,
    required TResult Function(LOADING_INTERSTITIAL value) loading,
    required TResult Function(LOADED_INTERSTITIAL value) loaded,
    required TResult Function(FAILED_INTERSTITIAL value) failed,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class UNINITIALIZED_INTERSTITIAL implements InterstitialAdState {
  const factory UNINITIALIZED_INTERSTITIAL() = _$UNINITIALIZED_INTERSTITIAL;
}

/// @nodoc
abstract class $LOADING_INTERSTITIALCopyWith<$Res> {
  factory $LOADING_INTERSTITIALCopyWith(LOADING_INTERSTITIAL value,
          $Res Function(LOADING_INTERSTITIAL) then) =
      _$LOADING_INTERSTITIALCopyWithImpl<$Res>;
}

/// @nodoc
class _$LOADING_INTERSTITIALCopyWithImpl<$Res>
    extends _$InterstitialAdStateCopyWithImpl<$Res>
    implements $LOADING_INTERSTITIALCopyWith<$Res> {
  _$LOADING_INTERSTITIALCopyWithImpl(
      LOADING_INTERSTITIAL _value, $Res Function(LOADING_INTERSTITIAL) _then)
      : super(_value, (v) => _then(v as LOADING_INTERSTITIAL));

  @override
  LOADING_INTERSTITIAL get _value => super._value as LOADING_INTERSTITIAL;
}

/// @nodoc

class _$LOADING_INTERSTITIAL implements LOADING_INTERSTITIAL {
  const _$LOADING_INTERSTITIAL();

  @override
  String toString() {
    return 'InterstitialAdState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LOADING_INTERSTITIAL);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(InterstitialAd interstitialAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_INTERSTITIAL value) uninitialized,
    required TResult Function(LOADING_INTERSTITIAL value) loading,
    required TResult Function(LOADED_INTERSTITIAL value) loaded,
    required TResult Function(FAILED_INTERSTITIAL value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LOADING_INTERSTITIAL implements InterstitialAdState {
  const factory LOADING_INTERSTITIAL() = _$LOADING_INTERSTITIAL;
}

/// @nodoc
abstract class $LOADED_INTERSTITIALCopyWith<$Res> {
  factory $LOADED_INTERSTITIALCopyWith(
          LOADED_INTERSTITIAL value, $Res Function(LOADED_INTERSTITIAL) then) =
      _$LOADED_INTERSTITIALCopyWithImpl<$Res>;
  $Res call({InterstitialAd interstitialAd});
}

/// @nodoc
class _$LOADED_INTERSTITIALCopyWithImpl<$Res>
    extends _$InterstitialAdStateCopyWithImpl<$Res>
    implements $LOADED_INTERSTITIALCopyWith<$Res> {
  _$LOADED_INTERSTITIALCopyWithImpl(
      LOADED_INTERSTITIAL _value, $Res Function(LOADED_INTERSTITIAL) _then)
      : super(_value, (v) => _then(v as LOADED_INTERSTITIAL));

  @override
  LOADED_INTERSTITIAL get _value => super._value as LOADED_INTERSTITIAL;

  @override
  $Res call({
    Object? interstitialAd = freezed,
  }) {
    return _then(LOADED_INTERSTITIAL(
      interstitialAd: interstitialAd == freezed
          ? _value.interstitialAd
          : interstitialAd // ignore: cast_nullable_to_non_nullable
              as InterstitialAd,
    ));
  }
}

/// @nodoc

class _$LOADED_INTERSTITIAL implements LOADED_INTERSTITIAL {
  const _$LOADED_INTERSTITIAL({required this.interstitialAd});

  @override
  final InterstitialAd interstitialAd;

  @override
  String toString() {
    return 'InterstitialAdState.loaded(interstitialAd: $interstitialAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LOADED_INTERSTITIAL &&
            const DeepCollectionEquality()
                .equals(other.interstitialAd, interstitialAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(interstitialAd));

  @JsonKey(ignore: true)
  @override
  $LOADED_INTERSTITIALCopyWith<LOADED_INTERSTITIAL> get copyWith =>
      _$LOADED_INTERSTITIALCopyWithImpl<LOADED_INTERSTITIAL>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(InterstitialAd interstitialAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return loaded(interstitialAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return loaded?.call(interstitialAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(interstitialAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_INTERSTITIAL value) uninitialized,
    required TResult Function(LOADING_INTERSTITIAL value) loading,
    required TResult Function(LOADED_INTERSTITIAL value) loaded,
    required TResult Function(FAILED_INTERSTITIAL value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LOADED_INTERSTITIAL implements InterstitialAdState {
  const factory LOADED_INTERSTITIAL({required InterstitialAd interstitialAd}) =
      _$LOADED_INTERSTITIAL;

  InterstitialAd get interstitialAd;
  @JsonKey(ignore: true)
  $LOADED_INTERSTITIALCopyWith<LOADED_INTERSTITIAL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAILED_INTERSTITIALCopyWith<$Res> {
  factory $FAILED_INTERSTITIALCopyWith(
          FAILED_INTERSTITIAL value, $Res Function(FAILED_INTERSTITIAL) then) =
      _$FAILED_INTERSTITIALCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$FAILED_INTERSTITIALCopyWithImpl<$Res>
    extends _$InterstitialAdStateCopyWithImpl<$Res>
    implements $FAILED_INTERSTITIALCopyWith<$Res> {
  _$FAILED_INTERSTITIALCopyWithImpl(
      FAILED_INTERSTITIAL _value, $Res Function(FAILED_INTERSTITIAL) _then)
      : super(_value, (v) => _then(v as FAILED_INTERSTITIAL));

  @override
  FAILED_INTERSTITIAL get _value => super._value as FAILED_INTERSTITIAL;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(FAILED_INTERSTITIAL(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILED_INTERSTITIAL implements FAILED_INTERSTITIAL {
  const _$FAILED_INTERSTITIAL({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'InterstitialAdState.failed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FAILED_INTERSTITIAL &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $FAILED_INTERSTITIALCopyWith<FAILED_INTERSTITIAL> get copyWith =>
      _$FAILED_INTERSTITIALCopyWithImpl<FAILED_INTERSTITIAL>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(InterstitialAd interstitialAd) loaded,
    required TResult Function(String reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
  }) {
    return failed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(InterstitialAd interstitialAd)? loaded,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED_INTERSTITIAL value) uninitialized,
    required TResult Function(LOADING_INTERSTITIAL value) loading,
    required TResult Function(LOADED_INTERSTITIAL value) loaded,
    required TResult Function(FAILED_INTERSTITIAL value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED_INTERSTITIAL value)? uninitialized,
    TResult Function(LOADING_INTERSTITIAL value)? loading,
    TResult Function(LOADED_INTERSTITIAL value)? loaded,
    TResult Function(FAILED_INTERSTITIAL value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FAILED_INTERSTITIAL implements InterstitialAdState {
  const factory FAILED_INTERSTITIAL({required String reason}) =
      _$FAILED_INTERSTITIAL;

  String get reason;
  @JsonKey(ignore: true)
  $FAILED_INTERSTITIALCopyWith<FAILED_INTERSTITIAL> get copyWith =>
      throw _privateConstructorUsedError;
}
