import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final bool? isEnable;
  final String label;
  const CustomButtonWidget({
    super.key,
    this.onTap,
    this.isEnable = true,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16.r),
      color: isEnable == false ? ColorTheme.darkGray : ColorTheme.blue,

      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: isEnable == false ? null : onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.w),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: FontTheme.semibold24.copyWith(color: ColorTheme.white),
          ),
        ),
      ),
    );
  }
}
