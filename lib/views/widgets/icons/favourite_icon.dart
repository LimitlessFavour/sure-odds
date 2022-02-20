import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../helper/utils/constants.dart';
import '../../../models/prediction.dart';
import '../../../providers/all_providers.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon(this.prediction, {Key? key}) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        var _favouritesPredProvider = ref.watch(favouritesProvider);
        final isFavourite = _favouritesPredProvider.contains(prediction);
        return IconButton(
          icon: Icon(isFavourite ? Icons.star : Icons.star_outline),
          color: Constants.primaryColor,
          iconSize: 32.0,
          onPressed: () {
            var _favouritePreditionState =
                ref.read(favouritesProvider.notifier);
            !isFavourite
                ? _favouritePreditionState.addToFavourite(prediction)
                : _favouritePreditionState.removeFromFavourite(prediction);
          },
        );
      },
    );
  }
}
