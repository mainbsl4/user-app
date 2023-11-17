import 'dart:ui';
import 'package:user_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillGrayTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGray1 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
      );
  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGreenTL2 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.h),
        ),
      );
  static ButtonStyle get fillOrange => ElevatedButton.styleFrom(
        backgroundColor: appTheme.orange50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL23 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.h),
        ),
      );
  static ButtonStyle get fillRedA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGrayTL4 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray10001,
        side: BorderSide(
          color: appTheme.blueGray300,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get outlineWhiteA => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.whiteA700,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
