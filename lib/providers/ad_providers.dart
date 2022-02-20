import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../services/repositories/ads_repository.dart';
import 'states/ad_state.dart';


class InterstitialAdProvider extends StateNotifier<InterstitialAdState> {
  InterstitialAdProvider({
    required AdsRepository adsRepository,
    required Ref ref,
  })  : _adsRepository = adsRepository,
        _ref = ref,
        super(const InterstitialAdState.uninitialized()) {
    createAds();
  }

  final AdsRepository _adsRepository;
  // ignore: unused_field
  final Ref _ref;

  int _numInterstitialLoadAttempts = 0;

  void createAds() async {
    state = const InterstitialAdState.loading();
    _createInterstitialAd();
  }

  void _createInterstitialAd() async {
    state = const InterstitialAdState.loading();
    await InterstitialAd.load(
      adUnitId: _adsRepository.unitIdList[1], //1
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          ad.setImmersiveMode(true);
          state = InterstitialAdState.loaded(interstitialAd: ad);
          _numInterstitialLoadAttempts = 0;
        },
        onAdFailedToLoad: (LoadAdError error) {
          state = InterstitialAdState.failed(
              reason: 'InterstitialAd failed to load: $error.');
          _numInterstitialLoadAttempts += 1;
          // _interstitialAd = null;
          if (_numInterstitialLoadAttempts < 3) {
            _createInterstitialAd();
          }
        },
      ),
    );
  }

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

class BannerAdProvider extends StateNotifier<BannerAdState> {
  BannerAdProvider({
    required AdsRepository adsRepository,
    required Ref ref,
  })  : _adsRepository = adsRepository,
        _ref = ref,
        super(const BannerAdState.uninitialized()) {
    createAds();
  }

  final AdsRepository _adsRepository;
  // ignore: unused_field
  final Ref _ref;

  void createAds() async {
    state = const BannerAdState.loading();
    _createBannerAd();
  }

  void _createBannerAd() async {
    final BannerAd bannerAd = BannerAd(
      adUnitId: _adsRepository.unitIdList[0],
      size: AdSize.banner,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    );
    await bannerAd.load();

    state = BannerAdState.loaded(bannerAd: bannerAd);
  }
}
