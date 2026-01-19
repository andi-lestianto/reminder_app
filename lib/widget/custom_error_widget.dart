import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  const CustomErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.w,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.lottie.bugLottie.lottie(width: 400.w),
        Text(
          message,
          textAlign: TextAlign.center,
          style: FontTheme.semibold24.copyWith(color: ColorTheme.black),
        ),
        Text(
          'Please try again later.',
          textAlign: TextAlign.center,
          style: FontTheme.medium20.copyWith(color: ColorTheme.gray),
        ),
      ],
    );
  }
}
