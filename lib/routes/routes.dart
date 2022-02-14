// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

/// A utility class that holds screen names for named navigation.
/// This class has no constructor and all variables are `static`.
@immutable
class Routes {
  const Routes._();

  /// The name of the route for app startup screen
  static const String AppStartupScreenRoute = '/app-startup-screen';

  /// The name of the route for home screen.
  static const String HomeScreenRoute = '/home-screen';
}
