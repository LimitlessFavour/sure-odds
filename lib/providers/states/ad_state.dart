import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ad_state.freezed.dart';

@freezed
class AdState with _$AdState {
  const factory AdState.uninitialized() = UNINITIALIZED;

  const factory AdState.loading() = LOADING;
  // const factory AdState.loading({required int index}) = AUTHENTICATING;

  const factory AdState.loadedBanner(
      {required int index, required BannerAd bannerAd}) = LOADEDBANNER;

  const factory AdState.loadedInterstitial(
      {required int index, required InterstitialAd interstitialAd}) = LOADEDINTERSTITIAL;

  const factory AdState.failed({required String reason}) = FAILED;
}
