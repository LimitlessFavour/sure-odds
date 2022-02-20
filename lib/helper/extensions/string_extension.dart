// ignore_for_file: unnecessary_this
// import '../utils/constants.dart';

import 'package:flutter/material.dart';
import '../utils/constants.dart';

/// A utility with extensions for strings.
extension StringExt on String {
  /// An extension for converting String to Capitalcase.
  String get capitalize =>
      this[0].toUpperCase() + this.substring(1).toLowerCase();

  /// An extension for replacing underscores in a String with spaces.
  String get removeUnderScore => this.replaceAll('_', ' ');

  ///extension for obraining form color from string/character.
  Color get formColor{
    switch (this.toLowerCase()) {
      case 'w':
        return Constants.greenColor;
      case 'd':
        return Constants.yellowColor;  
      case 'l':
        return Constants.redColor;           
      default:
        return Constants.scaffoldGreyColor;

    }
  }
}
