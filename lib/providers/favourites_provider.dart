import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/prediction.dart';
import '../services/repositories/favourites_repository.dart';

class FavouritesProvider extends StateNotifier<List<Prediction>> {
  final FavouritesRepository _favouritesRepository;
  final Ref _ref;

  FavouritesProvider({
    required FavouritesRepository favouritesRepository,
    required Ref ref,
  })  : _favouritesRepository = favouritesRepository,
        _ref = ref,
        super([]);

  void fetchFavourites() {
    List<Prediction> currentFavourites =
        _favouritesRepository.fetchFavourites();
    state = currentFavourites;
    // return currentFavourites;
  }

  void addToFavourite(Prediction prediction) {
    state = _favouritesRepository.addToFavourite(prediction);
    // return state;
  }

  void removeFromFavourite(Prediction prediction) {
    state = _favouritesRepository.removeFromFavourite(prediction);
    // return state;
  }
}
