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
    '	ca-app-pub-3940256099942544/4411468910',
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

  /// The color value for red color in the app.
  static const Color redColor = Color(0xFFed0000);

  /// The color value for orange color in the app.
  static const Color orangeColor = Color(0xFFf04f00);

  /// The color value for rating stars in the app.
  static const Color starsColor = Color(0xFFf78040);

  /// The color value for dark grey skeleton containers in the app.
  static const Color darkSkeletonColor = Color(0xFF656565);

  /// The color value for light grey skeleton containers in the app.
  static const Color lightSkeletonColor = Colors.grey;

  /// The red [LinearGradient] for buttons in the app.
  static const Gradient buttonGradientRed = LinearGradient(
    colors: [primaryColor, redColor],
  );

  /// The orange [LinearGradient] for buttons in the app.
  static const Gradient buttonGradientOrange = LinearGradient(
    colors: [orangeColor, redColor],
  );

  /// The orange [LinearGradient] for disabled buttons in the app.
  static const Gradient buttonGradientGrey = LinearGradient(
    colors: [textGreyColor, scaffoldGreyColor],
  );

  /// The price for a single seat ticket
  static const double ticketPrice = 800;

  /// The white [LinearGradient] for fading movies carousel in the app.
  static const Gradient movieCarouselGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.3, 0.6, 1],
    colors: [
      Color.fromRGBO(255, 255, 255, 0.95),
      Colors.white70,
      Colors.transparent,
    ],
  );

  /// The black [LinearGradient] used to overlay movie backgrounds in the app.
  static const Gradient blackOverlayGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2, 0.5, 0.7, 1],
    colors: [
      Color.fromRGBO(0, 0, 0, 0.6),
      Color.fromRGBO(0, 0, 0, 0.45),
      Color.fromRGBO(0, 0, 0, 0.3),
      Colors.transparent,
    ],
  );

  /// The color value for dark grey buttons in the app.
  static const Color buttonGreyColor = Color(0xFF1c1c1c);

  /// The color value for dark grey scaffold in the app.
  static const Color scaffoldColor = Color(0xFF141414);

  /// The color value for light grey scaffold in the app.
  static const Color scaffoldGreyColor = Color(0xFF2b2b2b);

  /// The color value for light grey text in the app.
  static const Color textGreyColor = Color(0xFF949494);

  /// The color value for white text in the app.
  static const Color textWhite80Color = Color(0xFFf2f2f2);

  /// The color value for dark grey [CustomDialog] in the app.
  static const Color barrierColor = Colors.black87;

  /// The color value for light grey [CustomDialog] in the app.
  static const Color barrierColorLight = Color(0xBF000000);

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
