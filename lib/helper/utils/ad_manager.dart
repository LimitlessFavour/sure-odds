import 'dart:io';

import 'package:flutter/foundation.dart';
import 'constants.dart';

class AdManager {
  String get appId => Platform.isAndroid
      ? Constants.admobAndroidAppId
      : Constants.admobIOSAppId;

  // static get unitIdList => Platform.isAndroid
  //     ? Constant.ADMOB_UNIT_ID_LIST_ANDROID
  //     : Constant.ADMOB_UNIT_ID_LIST_IOS;

  ///unit id lists strictly for android and ios - banner and instertitial ads
  List<String> get unitIdList {
    if (kReleaseMode) {
      if (Platform.isAndroid) return Constants.admob_unit_id_list_android;
      return Constants.admob_unit_id_list_ios;
    }
    if (Platform.isAndroid) return Constants.admob_unit_id_list_android_test;
    return Constants.admob_unit_id_list_ios_test;
  }
}
