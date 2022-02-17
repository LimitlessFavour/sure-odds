import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../helper/utils/constants.dart';

class AdManager {
  static String get appId => Platform.isAndroid
      ? Constants.admobAndroidAppId
      : Constants.admobIOSAppId;

  // static get unitIdList => Platform.isAndroid
  //     ? Constant.ADMOB_UNIT_ID_LIST_ANDROID
  //     : Constant.ADMOB_UNIT_ID_LIST_IOS;

  ///unit id lists strictly for android and ios - banner and instertitial ads
  static List<String> get unitIdList {
    if (kReleaseMode) {
      if (Platform.isAndroid) return Constants.admob_unit_id_list_android;
      return Constants.admob_unit_id_list_ios;
    }
    if (Platform.isAndroid) return Constants.admob_unit_id_list_android_test;
    return Constants.admob_unit_id_list_ios_test;
  }

  /// Initialize the banner Ad
  ///
  /// Usage:
  ///
  /// BannerAd bannerAd;
  ///
  /// @override
  /// void initState() {
  ///   super.initState();
  ///   bannerAd = AdManager.initBannerAd();
  /// }
  ///
  /// ... and later in UI, use
  /// AdWidget(ad: bannerAd)
  ///
  static BannerAd? loadBannerAd(int index) {
    BannerAd bannerAd;
    final BannerAdListener listener = BannerAdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) {},
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        // Dispose the ad here to free resources.
        ad.dispose();
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) {},
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) {},
      // Called when an impression occurs on the ad.
      onAdImpression: (Ad ad) {},
    );
    bannerAd = BannerAd(
      adUnitId: unitIdList[index],
      size: AdSize.banner,
      request: const AdRequest(),
      listener: listener,
    );
    bannerAd.load();
    return bannerAd;
  }
}
