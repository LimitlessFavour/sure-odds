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
class _$AdStateTearOff {
  const _$AdStateTearOff();

  UNINITIALIZED uninitialized() {
    return const UNINITIALIZED();
  }

  LOADING loading() {
    return const LOADING();
  }

  LOADEDBANNER loadedBanner({required int index, required BannerAd bannerAd}) {
    return LOADEDBANNER(
      index: index,
      bannerAd: bannerAd,
    );
  }

  LOADEDINTERSTITIAL loadedInterstitial(
      {required int index, required InterstitialAd interstitialAd}) {
    return LOADEDINTERSTITIAL(
      index: index,
      interstitialAd: interstitialAd,
    );
  }

  FAILED failed({required String reason}) {
    return FAILED(
      reason: reason,
    );
  }
}

/// @nodoc
const $AdState = _$AdStateTearOff();

/// @nodoc
mixin _$AdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(int index, BannerAd bannerAd) loadedBanner,
    required TResult Function(int index, InterstitialAd interstitialAd)
        loadedInterstitial,
    required TResult Function(String reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED value) uninitialized,
    required TResult Function(LOADING value) loading,
    required TResult Function(LOADEDBANNER value) loadedBanner,
    required TResult Function(LOADEDINTERSTITIAL value) loadedInterstitial,
    required TResult Function(FAILED value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateCopyWith<$Res> {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) then) =
      _$AdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateCopyWithImpl<$Res> implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._value, this._then);

  final AdState _value;
  // ignore: unused_field
  final $Res Function(AdState) _then;
}

/// @nodoc
abstract class $UNINITIALIZEDCopyWith<$Res> {
  factory $UNINITIALIZEDCopyWith(
          UNINITIALIZED value, $Res Function(UNINITIALIZED) then) =
      _$UNINITIALIZEDCopyWithImpl<$Res>;
}

/// @nodoc
class _$UNINITIALIZEDCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements $UNINITIALIZEDCopyWith<$Res> {
  _$UNINITIALIZEDCopyWithImpl(
      UNINITIALIZED _value, $Res Function(UNINITIALIZED) _then)
      : super(_value, (v) => _then(v as UNINITIALIZED));

  @override
  UNINITIALIZED get _value => super._value as UNINITIALIZED;
}

/// @nodoc

class _$UNINITIALIZED implements UNINITIALIZED {
  const _$UNINITIALIZED();

  @override
  String toString() {
    return 'AdState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UNINITIALIZED);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(int index, BannerAd bannerAd) loadedBanner,
    required TResult Function(int index, InterstitialAd interstitialAd)
        loadedInterstitial,
    required TResult Function(String reason) failed,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
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
    required TResult Function(UNINITIALIZED value) uninitialized,
    required TResult Function(LOADING value) loading,
    required TResult Function(LOADEDBANNER value) loadedBanner,
    required TResult Function(LOADEDINTERSTITIAL value) loadedInterstitial,
    required TResult Function(FAILED value) failed,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class UNINITIALIZED implements AdState {
  const factory UNINITIALIZED() = _$UNINITIALIZED;
}

/// @nodoc
abstract class $LOADINGCopyWith<$Res> {
  factory $LOADINGCopyWith(LOADING value, $Res Function(LOADING) then) =
      _$LOADINGCopyWithImpl<$Res>;
}

/// @nodoc
class _$LOADINGCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements $LOADINGCopyWith<$Res> {
  _$LOADINGCopyWithImpl(LOADING _value, $Res Function(LOADING) _then)
      : super(_value, (v) => _then(v as LOADING));

  @override
  LOADING get _value => super._value as LOADING;
}

/// @nodoc

class _$LOADING implements LOADING {
  const _$LOADING();

  @override
  String toString() {
    return 'AdState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LOADING);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(int index, BannerAd bannerAd) loadedBanner,
    required TResult Function(int index, InterstitialAd interstitialAd)
        loadedInterstitial,
    required TResult Function(String reason) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
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
    required TResult Function(UNINITIALIZED value) uninitialized,
    required TResult Function(LOADING value) loading,
    required TResult Function(LOADEDBANNER value) loadedBanner,
    required TResult Function(LOADEDINTERSTITIAL value) loadedInterstitial,
    required TResult Function(FAILED value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LOADING implements AdState {
  const factory LOADING() = _$LOADING;
}

/// @nodoc
abstract class $LOADEDBANNERCopyWith<$Res> {
  factory $LOADEDBANNERCopyWith(
          LOADEDBANNER value, $Res Function(LOADEDBANNER) then) =
      _$LOADEDBANNERCopyWithImpl<$Res>;
  $Res call({int index, BannerAd bannerAd});
}

/// @nodoc
class _$LOADEDBANNERCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements $LOADEDBANNERCopyWith<$Res> {
  _$LOADEDBANNERCopyWithImpl(
      LOADEDBANNER _value, $Res Function(LOADEDBANNER) _then)
      : super(_value, (v) => _then(v as LOADEDBANNER));

  @override
  LOADEDBANNER get _value => super._value as LOADEDBANNER;

  @override
  $Res call({
    Object? index = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(LOADEDBANNER(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      bannerAd: bannerAd == freezed
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd,
    ));
  }
}

/// @nodoc

class _$LOADEDBANNER implements LOADEDBANNER {
  const _$LOADEDBANNER({required this.index, required this.bannerAd});

  @override
  final int index;
  @override
  final BannerAd bannerAd;

  @override
  String toString() {
    return 'AdState.loadedBanner(index: $index, bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LOADEDBANNER &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.bannerAd, bannerAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(bannerAd));

  @JsonKey(ignore: true)
  @override
  $LOADEDBANNERCopyWith<LOADEDBANNER> get copyWith =>
      _$LOADEDBANNERCopyWithImpl<LOADEDBANNER>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(int index, BannerAd bannerAd) loadedBanner,
    required TResult Function(int index, InterstitialAd interstitialAd)
        loadedInterstitial,
    required TResult Function(String reason) failed,
  }) {
    return loadedBanner(index, bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
  }) {
    return loadedBanner?.call(index, bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (loadedBanner != null) {
      return loadedBanner(index, bannerAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED value) uninitialized,
    required TResult Function(LOADING value) loading,
    required TResult Function(LOADEDBANNER value) loadedBanner,
    required TResult Function(LOADEDINTERSTITIAL value) loadedInterstitial,
    required TResult Function(FAILED value) failed,
  }) {
    return loadedBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
  }) {
    return loadedBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (loadedBanner != null) {
      return loadedBanner(this);
    }
    return orElse();
  }
}

abstract class LOADEDBANNER implements AdState {
  const factory LOADEDBANNER({required int index, required BannerAd bannerAd}) =
      _$LOADEDBANNER;

  int get index;
  BannerAd get bannerAd;
  @JsonKey(ignore: true)
  $LOADEDBANNERCopyWith<LOADEDBANNER> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LOADEDINTERSTITIALCopyWith<$Res> {
  factory $LOADEDINTERSTITIALCopyWith(
          LOADEDINTERSTITIAL value, $Res Function(LOADEDINTERSTITIAL) then) =
      _$LOADEDINTERSTITIALCopyWithImpl<$Res>;
  $Res call({int index, InterstitialAd interstitialAd});
}

/// @nodoc
class _$LOADEDINTERSTITIALCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements $LOADEDINTERSTITIALCopyWith<$Res> {
  _$LOADEDINTERSTITIALCopyWithImpl(
      LOADEDINTERSTITIAL _value, $Res Function(LOADEDINTERSTITIAL) _then)
      : super(_value, (v) => _then(v as LOADEDINTERSTITIAL));

  @override
  LOADEDINTERSTITIAL get _value => super._value as LOADEDINTERSTITIAL;

  @override
  $Res call({
    Object? index = freezed,
    Object? interstitialAd = freezed,
  }) {
    return _then(LOADEDINTERSTITIAL(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      interstitialAd: interstitialAd == freezed
          ? _value.interstitialAd
          : interstitialAd // ignore: cast_nullable_to_non_nullable
              as InterstitialAd,
    ));
  }
}

/// @nodoc

class _$LOADEDINTERSTITIAL implements LOADEDINTERSTITIAL {
  const _$LOADEDINTERSTITIAL(
      {required this.index, required this.interstitialAd});

  @override
  final int index;
  @override
  final InterstitialAd interstitialAd;

  @override
  String toString() {
    return 'AdState.loadedInterstitial(index: $index, interstitialAd: $interstitialAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LOADEDINTERSTITIAL &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.interstitialAd, interstitialAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(interstitialAd));

  @JsonKey(ignore: true)
  @override
  $LOADEDINTERSTITIALCopyWith<LOADEDINTERSTITIAL> get copyWith =>
      _$LOADEDINTERSTITIALCopyWithImpl<LOADEDINTERSTITIAL>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(int index, BannerAd bannerAd) loadedBanner,
    required TResult Function(int index, InterstitialAd interstitialAd)
        loadedInterstitial,
    required TResult Function(String reason) failed,
  }) {
    return loadedInterstitial(index, interstitialAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
  }) {
    return loadedInterstitial?.call(index, interstitialAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (loadedInterstitial != null) {
      return loadedInterstitial(index, interstitialAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNINITIALIZED value) uninitialized,
    required TResult Function(LOADING value) loading,
    required TResult Function(LOADEDBANNER value) loadedBanner,
    required TResult Function(LOADEDINTERSTITIAL value) loadedInterstitial,
    required TResult Function(FAILED value) failed,
  }) {
    return loadedInterstitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
  }) {
    return loadedInterstitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (loadedInterstitial != null) {
      return loadedInterstitial(this);
    }
    return orElse();
  }
}

abstract class LOADEDINTERSTITIAL implements AdState {
  const factory LOADEDINTERSTITIAL(
      {required int index,
      required InterstitialAd interstitialAd}) = _$LOADEDINTERSTITIAL;

  int get index;
  InterstitialAd get interstitialAd;
  @JsonKey(ignore: true)
  $LOADEDINTERSTITIALCopyWith<LOADEDINTERSTITIAL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAILEDCopyWith<$Res> {
  factory $FAILEDCopyWith(FAILED value, $Res Function(FAILED) then) =
      _$FAILEDCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$FAILEDCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements $FAILEDCopyWith<$Res> {
  _$FAILEDCopyWithImpl(FAILED _value, $Res Function(FAILED) _then)
      : super(_value, (v) => _then(v as FAILED));

  @override
  FAILED get _value => super._value as FAILED;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(FAILED(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILED implements FAILED {
  const _$FAILED({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'AdState.failed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FAILED &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $FAILEDCopyWith<FAILED> get copyWith =>
      _$FAILEDCopyWithImpl<FAILED>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() loading,
    required TResult Function(int index, BannerAd bannerAd) loadedBanner,
    required TResult Function(int index, InterstitialAd interstitialAd)
        loadedInterstitial,
    required TResult Function(String reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
    TResult Function(String reason)? failed,
  }) {
    return failed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? loading,
    TResult Function(int index, BannerAd bannerAd)? loadedBanner,
    TResult Function(int index, InterstitialAd interstitialAd)?
        loadedInterstitial,
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
    required TResult Function(UNINITIALIZED value) uninitialized,
    required TResult Function(LOADING value) loading,
    required TResult Function(LOADEDBANNER value) loadedBanner,
    required TResult Function(LOADEDINTERSTITIAL value) loadedInterstitial,
    required TResult Function(FAILED value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNINITIALIZED value)? uninitialized,
    TResult Function(LOADING value)? loading,
    TResult Function(LOADEDBANNER value)? loadedBanner,
    TResult Function(LOADEDINTERSTITIAL value)? loadedInterstitial,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FAILED implements AdState {
  const factory FAILED({required String reason}) = _$FAILED;

  String get reason;
  @JsonKey(ignore: true)
  $FAILEDCopyWith<FAILED> get copyWith => throw _privateConstructorUsedError;
}
