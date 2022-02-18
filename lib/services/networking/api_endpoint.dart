// ignore_for_file: constant_identifier_names
// DO NOT USE 'dartfmt' on this file for formatting

import 'package:flutter/material.dart';

/// A utility class for getting paths for API endpoints.
/// This class has no constructor and all methods are `static`.
@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  /// The base url of our REST API, to which all the requests will be sent.
  /// It is supplied at the time of building the apk or running the app:
  /// ```
  /// flutter build apk --debug --dart-define=BASE_URL=www.some_url.com
  /// ```
  /// OR
  /// ```
  /// flutter run --dart-define=BASE_URL=www.some_url.com
  /// ```
  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'localhost:3000/api/v1',
  );

  /// Returns the path for a prediction [endpoint].
  ///
  static String predictions(PredictionsEndpoint endpoint) {
    var path = '/prediction';
    switch (endpoint) {
      case PredictionsEndpoint.TODAY:
        path = '/prediction/today';
        break;
      case PredictionsEndpoint.TOMORROW:
        path = '/prediction/tomorrow';
        break;
    }
    return path;
  }
}

/// A collection of endpoints used for obtaining predictions.
enum PredictionsEndpoint {
  /// An endpoint for today's predictions.
  TODAY,

  /// An endpoint for tomorrow's predictions.
  TOMORROW
}
