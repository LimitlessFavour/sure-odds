import 'package:dio/dio.dart';
import 'package:sure_odds/models/prediction.dart';
import 'package:sure_odds/services/local_storage/key_value_storage_service.dart';

//models
import '../../models/api_response.dart';

//services
import '../networking/api_endpoint.dart';
import '../networking/api_service.dart';

//helpers
import '../../helper/typedefs.dart';

class FavouritesRepository {
  FavouritesRepository({
    required KeyValueStorageService storageService,
  }) : _storageService = storageService;

  final KeyValueStorageService _storageService;

  List<Prediction> fetchFavourites() {
    List<Prediction> cachedPredictions = _storageService.getFavourites();
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
