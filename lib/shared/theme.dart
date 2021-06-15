import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  /// Pallete of `Primary` color's
  static Color primary =  Color(0xFF5B2FB6);
  static Color primaryDark = Color(0xFF4D2998);
  static Color primaryLight = Color(0xFF5B2FB6);

  /// Pallete of `Secondary` color's
  static Color secondary = Color(0xFF28AF8B);
  static Color secondaryDark = Color(0xFF28AF8B);
  static Color secondaryLight = Color(0xFF28AF8B);

  /// Pallete of `State` color's
  static Color error = Color(0xFFFF7171);
  static Color success = Color(0xFF32D99A);
  static Color warning = Color(0XFFF2AC57);
  static Color info = Color(0xFF0063F7);

  // Grey color's
  static Color gray1 = Color(0xFF333333);
  static Color gray2 = Color(0xFF4F4F4F);
  static Color gray3 = Color(0xFF828282);
  static Color gray4 = Color(0xFFBDBDBD);
  static Color gray5 = Color(0xFFE0E0E0);
  static Color gray6 = Color(0xFFF2F2F2);

  /// Other color's
  static Color background = Color(0xFFEDF2F7);
  static Color backgroundDark = Color(0xFF1D1B1C);


  // Text Widths

  static FontWeight lightWeight = FontWeight.w300;
  static FontWeight regularWeight = FontWeight.w400;
  static FontWeight mediumWeight = FontWeight.w500;
  static FontWeight semiBoldWeight = FontWeight.w600;
  static FontWeight boldWeight = FontWeight.w700;

  /// Init `theme light data` from application
  static final ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(),
      brightness: Brightness.light,
      iconTheme: IconThemeData(),
      textTheme: TextTheme(),
    ),
    primaryColor: primary,
    brightness: Brightness.light,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    accentColorBrightness: Brightness.light,
    backgroundColor: background,
    buttonColor: primary,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
      focusElevation: 1,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    accentColor: secondary,
    splashColor: primary,
    cardColor: Colors.white,
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Exo',
        fontSize: 96,
        fontWeight: AppTheme.regularWeight,
        letterSpacing: -1.5,
        decoration: TextDecoration.none,
      ),
      headline2: TextStyle(
        fontFamily: 'Exo',
        fontSize: 60,
        fontWeight: AppTheme.regularWeight,
        letterSpacing: -0.5,
        decoration: TextDecoration.none,
      ),
      headline3: TextStyle(
        fontFamily: 'Exo',
        fontSize: 48,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0,
        decoration: TextDecoration.none,
      ),
      headline4: TextStyle(
        fontFamily: 'Exo',
        fontSize: 34,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.25,
        decoration: TextDecoration.none,
      ),
      headline5: TextStyle(
        fontFamily: 'Exo',
        fontSize: 24,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0,
        decoration: TextDecoration.none,
      ),
      headline6: TextStyle(
        fontFamily: 'Exo',
        fontSize: 20,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.15,
        decoration: TextDecoration.none,
      ),
      subtitle1: TextStyle(
        fontFamily: 'Exo',
        fontSize: 16,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.15,
        decoration: TextDecoration.none,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Exo',
        fontSize: 14,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.1,
        decoration: TextDecoration.none,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Exo',
        fontSize: 16,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.5,
        decoration: TextDecoration.none,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Exo',
        fontSize: 14,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.25,
        decoration: TextDecoration.none,
      ),
      button: TextStyle(
        fontFamily: 'Exo',
        fontSize: 14,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 1.25,
        decoration: TextDecoration.none,
      ),
      caption: TextStyle(
        fontFamily: 'Exo',
        fontSize: 12,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.4,
        decoration: TextDecoration.none,
      ),
      overline: TextStyle(
        fontFamily: 'Exo',
        fontSize: 10,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 1.5,
        decoration: TextDecoration.none,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: background,
      elevation: 0,
    ),
    scaffoldBackgroundColor: background,
    buttonTheme: ButtonThemeData(),
  );

  /// Init `theme dark data` from application
  static final ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(),
      brightness: Brightness.dark,
      color: primary,
      iconTheme: IconThemeData(),
      textTheme: TextTheme(),
    ),
    primaryColor: primary,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    accentColorBrightness: Brightness.dark,
    backgroundColor: backgroundDark,
    buttonColor: primary,
    dividerColor: Colors.white30,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
      focusElevation: 1,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    accentColor: secondary,
    splashColor: primary,
    scaffoldBackgroundColor: backgroundDark,
    cardColor: Colors.grey.shade900,
    cardTheme: CardTheme(
      color: Colors.grey.shade900,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: backgroundDark,
      elevation: 0,
    ),
    
    iconTheme: IconThemeData(),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Exo',
        fontSize: 96,
        fontWeight: AppTheme.regularWeight,
        letterSpacing: -1.5,
        color: Colors.white12,
        decoration: TextDecoration.none,
      ),
      headline2: TextStyle(
        fontFamily: 'Exo',
        fontSize: 60,
        fontWeight: AppTheme.regularWeight,
        letterSpacing: -0.5,
        color: Colors.white24,
        decoration: TextDecoration.none,
      ),
      headline3: TextStyle(
        fontFamily: 'Exo',
        fontSize: 48,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0,
        color: Colors.white30,
        decoration: TextDecoration.none,
      ),
      headline4: TextStyle(
        fontFamily: 'Exo',
        fontSize: 34,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.25,
        color: Colors.white24,
        decoration: TextDecoration.none,
      ),
      headline5: TextStyle(
        fontFamily: 'Exo',
        fontSize: 24,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0,
        color: Colors.white70,
        decoration: TextDecoration.none,
      ),
      headline6: TextStyle(
        fontFamily: 'Exo',
        fontSize: 20,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.15,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      subtitle1: TextStyle(
        fontFamily: 'Exo',
        fontSize: 16,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.15,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Exo',
        fontSize: 14,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.1,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Exo',
        fontSize: 16,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.5,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Exo',
        fontSize: 14,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.25,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      button: TextStyle(
        fontFamily: 'Exo',
        fontSize: 14,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 1.25,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
      caption: TextStyle(
        fontFamily: 'Exo',
        fontSize: 12,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 0.4,
        color: Colors.white30,
        decoration: TextDecoration.none,
      ),
      overline: TextStyle(
        fontFamily: 'Exo',
        fontSize: 10,
        fontWeight: AppTheme.mediumWeight,
        letterSpacing: 1.5,
        color: Colors.white24,
        decoration: TextDecoration.none,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primary,
    ),
  );

  static void changeStatusBar<T extends ThemeHelper>({
    SystemUiOverlayStyle? style,
    Color? backgroundColor,
  }) {
    if (T == Light) {
      return SystemChrome.setSystemUIOverlayStyle(
        style != null
            ? style.copyWith(
                systemNavigationBarIconBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.dark,
                statusBarColor: backgroundColor,
              )
            : SystemUiOverlayStyle.light.copyWith(
                statusBarColor: backgroundColor ?? Colors.transparent,
              ),
      );
    } else if (T == Dark) {
      return SystemChrome.setSystemUIOverlayStyle(
        style != null
            ? style.copyWith(
                systemNavigationBarIconBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.light,
                statusBarColor: backgroundColor,
              )
            : SystemUiOverlayStyle.dark.copyWith(
                statusBarColor: backgroundColor ?? Colors.transparent,
              ),
      );
    }

    return SystemChrome.setSystemUIOverlayStyle(
      style ??
          SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
          ),
    );
  }
}

abstract class ThemeHelper {}

class Light extends ThemeHelper {}

class Dark extends ThemeHelper {}
