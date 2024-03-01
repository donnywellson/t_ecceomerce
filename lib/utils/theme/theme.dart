import 'package:flutter/material.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_ecommerce/utils/theme/custom_themes/appbar_theme.dart';

class TappTheme {
  TappTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    chipTheme: TChipTheme.lightChipTheme,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lighCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputdecoratheme
);
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    chipTheme: TChipTheme.darkChipTheme,
    textTheme: TTextTheme.dartTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputdecoratheme,
  );
}