import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../services/repositories/ads_repository.dart';
import 'states/ad_state.dart';

class AdProvider extends StateNotifier<AdState> {
  AdProvider({
    required AdsRepository adsRepository,
    required Ref ref,
  })  : _adsRepository = adsRepository,
        _ref = ref,
        super(const AdState.uninitialized()) {
    createAds();
  }

  final AdsRepository _adsRepository;
  final Ref _ref;

  // InterstitialAd? _interstitialAd;
  int _numInterstitialLoadAttempts = 0;

  void createAds() async {
    state = const AdState.loading();
    _createBannerAd();
    _createInterstitialAd();
  }

  void _createBannerAd() async {
    final BannerAd bannerAd = BannerAd(
      adUnitId: _adsRepository.unitIdList[0],
      size: AdSize.banner,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    );
    await bannerAd.load();
  }

  void _createInterstitialAd() async {
    state = const AdState.loading();
    await InterstitialAd.load(
      adUnitId: _adsRepository.unitIdList[1], //1
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          ad.setImmersiveMode(true);
          state = AdState.loadedInterstitial(index: 1, interstitialAd: ad);
          // _interstitialAd = ad;
          _numInterstitialLoadAttempts = 0;
          // _interstitialAd!.setImmersiveMode(true);
        },
        onAdFailedToLoad: (LoadAdError error) {
          state =
              AdState.failed(reason: 'InterstitialAd failed to load: $error.');
          _numInterstitialLoadAttempts += 1;
          // _interstitialAd = null;
          if (_numInterstitialLoadAttempts < 3) {
            _createInterstitialAd();
          }
        },
      ),
    );
  }

  // void showBannerAd(BannerAd ad) {
  //   ad.fullScreenContentCallback = FullScreenContentCallback(
  //     onAdShowedFullScreenContent: (InterstitialAd ad) =>
  //         print('ad onAdShowedFullScreenContent.'),
  //     onAdDismissedFullScreenContent: (InterstitialAd ad) {
  //       print('$ad onAdDismissedFullScreenContent.');
  //       ad.dispose();
  //       _createInterstitialAd();
  //     },
  //     onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
  //       print('$ad onAdFailedToShowFullScreenContent: $error');
  //       ad.dispose();
  //       _createInterstitialAd();
  //     },
  //   );
  //   ad.show();
  // }

  void showInterstitialAd(InterstitialAd ad) {
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad) =>
          print('ad onAdShowedFullScreenContent.'),
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        print('$ad onAdDismissedFullScreenContent.');
        ad.dispose();
        _createInterstitialAd();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
        _createInterstitialAd();
      },
    );
    ad.show();
  }
}
