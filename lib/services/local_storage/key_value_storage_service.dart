import 'dart:convert';

//services
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

  /// Instance of key-value storage base class
  final _keyValueStorage = KeyValueStorageBase.instance;

  /// Returns last authenticated user
  // UserModel? getAuthUser() {
  //   final user = _keyValueStorage.getCommon<String>(_authUserKey);
  //   if(user == null) return null;
  //   return UserModel.fromJson(jsonDecode(user) as JSON);
  // }

  ApiResponseModel? getTodaysFixtures() {
    final fixtures = _keyValueStorage.getCommon<String>(_todays_fixtures_Key);
    if (fixtures == null) return null;
    return ApiResponseModel.fromJson(jsonDecode(fixtures) as JSON);
  }

  ApiResponseModel? getTomorrowsFixtures() {
    final fixtures = _keyValueStorage.getCommon<String>(_tomorrows_fixtures_Key);
    if (fixtures == null) return null;
    return ApiResponseModel.fromJson(jsonDecode(fixtures) as JSON);
  }

  /// Sets the authenticated user to this value. Even though this method is
  /// asynchronous, we don't care about it's completion which is why we don't
  /// use `await` and let it execute in the background.

  // void setAuthUser(UserModel user) {
  //   _keyValueStorage.setCommon<String>(_authUserKey, jsonEncode(user.toJson()));
  // }


  //TODO Find a way to save it with the date.
  void saveTodaysFixtures(ApiResponseModel fixtures) {
    _keyValueStorage.setCommon<String>(_todays_fixtures_Key, jsonEncode(fixtures.toJson()));
  }

  void saveTomorrowsFixtures(ApiResponseModel fixtures) {
    _keyValueStorage.setCommon<String>(_tomorrows_fixtures_Key, jsonEncode(fixtures.toJson()));
  }

  void resetKeys() {
    _keyValueStorage.clearCommon();
  }
}
