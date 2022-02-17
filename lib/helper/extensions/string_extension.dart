// ignore_for_file: unnecessary_this
// import '../utils/constants.dart';

/// A utility with extensions for strings.
extension StringExt on String {
  /// An extension for converting String to Capitalcase.
  String get capitalize => this[0].toUpperCase() + this.substring(1).toLowerCase();

  /// An extension for replacing underscores in a String with spaces.
  String get removeUnderScore => this.replaceAll('_', ' ');
}
