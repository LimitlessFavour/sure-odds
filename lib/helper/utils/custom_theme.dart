import 'package:flutter/material.dart';

import 'constants.dart';

/// A utility class that holds themes for the app.
/// This class has no constructor and all methods are `static`.
@immutable
class CustomTheme {
  const CustomTheme._();

  /// The main starting theme for the app.
  ///
  /// Sets the following defaults:
  /// * primaryColor: [Constants.primaryColor],
  /// * scaffoldBackgroundColor: [Constants.scaffoldColor],
  /// * fontFamily: [Constants.poppinsFont].fontFamily,
  /// * iconTheme: [Colors.white] for default icon
  /// * textButtonTheme: [TextButtonTheme] without the default padding,
  static late final mainTheme = ThemeData(
    primaryColor: Constants.primaryColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Constants.primaryColor,
      primaryVariant: Constants.primaryColor,
      secondary: Constants.secondaryColor,
      secondaryVariant: Constants.secondaryColor,
    ),
    scaffoldBackgroundColor: Constants.scaffoldGreyColor,
    fontFamily: Constants.robotoFont.fontFamily,
    textTheme: TextTheme(

      ///*expansion tile text, navigation drawer tile active
      headline1: Constants.solwayFont.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Colors.white,
      ),

      ///*navigation drawer tile inactive
      headline2: Constants.solwayFont.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Constants.primaryColor,
      ),

      ///*prediction tile
      headline3: Constants.robotoFont.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Colors.black,
      ),

      ///* tips and odds text
      headline4: Constants.robotoFont.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: Colors.black
      ),

      ///* tabs text
      headline5: Constants.solwayFont.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.black
      ),

      ///* today/tomorrow switch text active
      headline6: Constants.solwayFont.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: Colors.black
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
