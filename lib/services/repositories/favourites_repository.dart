
import '../../models/prediction.dart';
import '../local_storage/key_value_storage_service.dart';

class FavouritesRepository {
  FavouritesRepository({
    required KeyValueStorageService storageService,
  }) : _storageService = storageService;

  final KeyValueStorageService _storageService;

  List<Prediction> fetchFavourites() {
    List<Prediction> cachedPredictions = _storageService.getFavourites() ?? [];
    return cachedPredictions;
  }

  List<Prediction> addToFavourite(Prediction prediction) {
    //fetch current favourites
    List<Prediction> cachedPredictions = fetchFavourites();
    //add new favourites
    cachedPredictions.add(prediction);  
    //save it
    _storageService.saveFavourites(cachedPredictions);
    return cachedPredictions;
  }

  List<Prediction> removeFromFavourite(Prediction prediction) {
    //fetch current favourites
    List<Prediction> cachedPredictions = fetchFavourites();
    //add new favourites
    cachedPredictions.remove(prediction);
    //save it
    _storageService.saveFavourites(cachedPredictions);
    return cachedPredictions;
  }
}
