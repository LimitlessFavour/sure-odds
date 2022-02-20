import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/all_providers.dart';
import 'error_response_handler.dart';

class CustomBannerAd extends StatelessWidget {
  const CustomBannerAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Consumer(
        builder: (ctx, ref, child) {
          final ad = ref.watch(bannerAdsProvider);
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            switchOutCurve: Curves.easeInBack,
            child: ad.when(
              uninitialized: () => const SizedBox(),
              loading: () => const SizedBox(),
              loaded: (ad) => SizedBox(
                width: ad.size.width.toDouble(),
                height: ad.size.height.toDouble(),
                child: AdWidget(ad: ad),
              ),
              failed: (error) => ErrorResponseHandler.builder(
                error: error,
                stackTrace: null,
                builder: (error) => Text(error.message),
              ),
            ),
          );
        },
      ),
    );
  }
}
