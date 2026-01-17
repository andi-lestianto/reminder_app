import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/gen/assets.gen.dart';

class FontTheme {
  FontTheme._();

  static TextStyle _baseStyle({
    required double fontSize,
    required String fontFamily,
    required double height,
    required double letterSpacing,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize.sp,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get regular48 => _baseStyle(
    fontFamily: Assets.fonts.poppinsRegular,
    fontSize: 48,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get regular16 => _baseStyle(
    fontFamily: Assets.fonts.poppinsRegular,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get medium64 => _baseStyle(
    fontFamily: Assets.fonts.poppinsMedium,
    fontSize: 64,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get medium20 => _baseStyle(
    fontFamily: Assets.fonts.poppinsMedium,
    fontSize: 20,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get medium18 => _baseStyle(
    fontFamily: Assets.fonts.poppinsMedium,
    fontSize: 18,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get bold48 => _baseStyle(
    fontFamily: Assets.fonts.poppinsBold,
    fontSize: 48,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get semibold24 => _baseStyle(
    fontFamily: Assets.fonts.poppinsSemiBold,
    fontSize: 24,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle get semiBold20 => _baseStyle(
    fontFamily: Assets.fonts.poppinsSemiBold,
    fontSize: 20,
    height: 1.5,
    letterSpacing: 0.15,
  );
}
