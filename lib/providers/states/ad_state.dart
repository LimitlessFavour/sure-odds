import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ad_state.freezed.dart';

@freezed
class BannerAdState with _$BannerAdState {
  const factory BannerAdState.uninitialized() = UNINITIALIZED_BANNER;

  const factory BannerAdState.loading() = LOADING_BANNER;

  const factory BannerAdState.loaded({required BannerAd bannerAd}) =
      LOADED_BANNER;

  const factory BannerAdState.failed({required String reason}) = FAILED_BANNER;
}

@freezed
class InterstitialAdState with _$InterstitialAdState {
  const factory InterstitialAdState.uninitialized() = UNINITIALIZED_INTERSTITIAL;

  const factory InterstitialAdState.loading() = LOADING_INTERSTITIAL;

  const factory InterstitialAdState.loaded(
      {required InterstitialAd interstitialAd}) = LOADED_INTERSTITIAL;

  const factory InterstitialAdState.failed({required String reason}) = FAILED_INTERSTITIAL;
}
