import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/buttom_sheet_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/check_box_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/outlined_bottom_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_ecommerce_apps/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.ligthChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TButtonSheetTheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecoration,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TButtonSheetTheme.darkTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecoration,
  );
}
