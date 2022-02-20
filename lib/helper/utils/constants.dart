// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A utility class that holds constants for useful and commonly
/// used values throughout the entire app.
/// This class has no constructor and all variables are `static`.
@immutable
class Constants {
  const Constants._();

  ///admob app ids.
  ///android
  static const admobAndroidAppId = 'ca-app-pub-3499190199800216~4772334006';

  ///ios
  static const admobIOSAppId = 'ca-app-pub-3499190199800216~3459252331';

  ///admob unit lists.
  /// should be One unit id for each Ad placement.

  /// Test list
  static const List<String> admob_unit_id_list_android_test = [
    //banner
    'ca-app-pub-3940256099942544/6300978111',
    //interstitial
    '	ca-app-pub-3940256099942544/1033173712',
  ];

  static const List<String> admob_unit_id_list_ios_test = [
    //banner
    'ca-app-pub-3940256099942544/2934735716',
    //interstitial
    'ca-app-pub-3940256099942544/4411468910',
  ];

  /// Production list
  static const List<String> admob_unit_id_list_android = [
    //banner
    'ca-app-pub-3499190199800216/3602900175',
    //interstitial
    'ca-app-pub-3499190199800216/6202811657',
  ];

  static const List<String> admob_unit_id_list_ios = [
    //banner
    'ca-app-pub-3499190199800216/2918172767',
    //interstitial
    'ca-app-pub-3499190199800216/9292009420',
  ];

  /// The main orange-red color used for theming the app.
  static const Color primaryColor = Color(0xff800020);

  static final Color secondaryColor = primaryColor.withOpacity(0.15);

  static final Color primary50OpacityColor = primaryColor.withOpacity(0.50);
  static final Color primary20OpacityColor = primaryColor.withOpacity(0.20);

  /// The color value for red color in the app.
  static const Color redColor = Color(0xFFed0000);
  

  /// The color value for orange color in the app.
  static const Color yellowColor = Color(0xFFDDE105);

  /// The color value for green color in the app.
  static const Color greenColor = Color(0xFF0DCE09);

  /// The color value for dark grey skeleton containers in the app.
  static const Color greyColor = Color(0xFFF0F0F0);

  /// The color value for vertical divider in the app.
  static const Color dividerColor = Color(0xFFC4C4C4);


  /// The color value for light grey scaffold in the app.
  static const Color scaffoldGreyColor = Colors.white;
  // static const Color scaffoldGreyColor =  Color(0xFFE5E5E5);

  static const Color textBlackColor = Colors.black;

  /// The TextStyle for Roboto font in the app.
  static TextStyle robotoFont = GoogleFonts.roboto();

  /// The TextStyle for Roboto font in the app.
  static TextStyle solwayFont = GoogleFonts.solway();

  /// The default [Duration] value for animations in the app.
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  /// The value for bottom padding of buttons in the app.
  /// It is measured from the bottom of the screen, that is
  /// behind the android system navigation.
  /// Used to prevent overlapping of android navigation with the button.
  static const double bottomInsets = 65;

  /// The value for a smaller bottom padding of buttons in the app.
  /// It is measured from the bottom of the screen, that is
  /// behind the android system navigation.
  /// Used to prevent overlapping of android navigation with the button.
  static const double bottomInsetsLow = 48;

  static T? toNull<T>(Object? _) => null;
}
