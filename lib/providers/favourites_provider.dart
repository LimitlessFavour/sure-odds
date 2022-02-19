import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/prediction.dart';
import '../services/repositories/favourites_repository.dart';

class FavouritesProvider {
  final FavouritesRepository _favouritesRepository;
  final Ref _ref;

  FavouritesProvider({
    required FavouritesRepository favouritesRepository,
    required Ref ref,
  })  : _favouritesRepository = favouritesRepository,
        _ref = ref,
        super();

  List<Prediction> fetchFavourites() {
    List<Prediction> currentFavourites =
        _favouritesRepository.fetchFavourites();
    return currentFavourites;
  }

  List<Prediction> addToFavourite(Prediction prediction) {
    return _favouritesRepository.addToFavourite(prediction);
  }

  List<Prediction> removeFromFavourite(Prediction prediction) {
    return _favouritesRepository.removeFromFavourite(prediction);
  }
}
