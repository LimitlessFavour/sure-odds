import 'dart:convert';

//services
import 'package:sure_odds/models/prediction.dart';

import '../../models/api_response.dart';

import 'key_value_storage_base.dart';

//helpers
import '../../helper/typedefs.dart';

/// A service class for providing methods to store and retrieve key-value data
/// from common or secure storage.
class KeyValueStorageService {
  /// The name of user model key
  static const _todays_fixtures_Key = "today's fixtures Key";
  static const _tomorrows_fixtures_Key = "tomorrow's fixtures Key";
  static const _favourites_key = "favourites key";

  /// Instance of key-value storage base class
  final _keyValueStorage = KeyValueStorageBase.instance;

  PredictionsResponseModel? getTodaysFixtures() {
    final fixtures = _keyValueStorage.getCommon<String>(_todays_fixtures_Key);
    if (fixtures == null) return null;
    return PredictionsResponseModel.fromJson(jsonDecode(fixtures) as JSON);
  }

  PredictionsResponseModel? getTomorrowsFixtures() {
    final fixtures =
        _keyValueStorage.getCommon<String>(_tomorrows_fixtures_Key);
    if (fixtures == null) return null;
    return PredictionsResponseModel.fromJson(jsonDecode(fixtures) as JSON);
  }

  List<Prediction>? getFavourites() {
    final predictions = _keyValueStorage.getPersisted<String>(_favourites_key);
    if (predictions == null) return [];
    return decode(predictions);
  }

  void saveFavourites(List<Prediction> predictions) {
    _keyValueStorage.setPersisted<String>(_favourites_key, encode(predictions));
  }

  //TODO Find a way to save it with the date.
  void saveTodaysFixtures(PredictionsResponseModel fixtures) {
    _keyValueStorage.setCommon<String>(
        _todays_fixtures_Key, jsonEncode(fixtures.toJson()));
  }

  void saveTomorrowsFixtures(PredictionsResponseModel fixtures) {
    _keyValueStorage.setCommon<String>(
        _tomorrows_fixtures_Key, jsonEncode(fixtures.toJson()));
  }

  void resetKeys() {
    _keyValueStorage.clearCommon();
  }
}

String encode(List<Prediction> predictions) => json.encode(
      predictions
          .map<Map<String, dynamic>>((prediction) => prediction.toJson())
          .toList(),
    );
List<Prediction> decode(String predictions) => (json.decode(predictions) as List)
    .map((dynamic prediction) => Prediction.fromJson(prediction as Map<String, dynamic>))
    .toList();
