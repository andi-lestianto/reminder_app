import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final bool? isEnable;
  final bool? isLoading;
  final String label;
  const CustomButtonWidget({
    super.key,
    this.onTap,
    this.isEnable = true,
    this.isLoading = false,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16.r),
      color: isEnable == false ? ColorTheme.gray : ColorTheme.blue,

      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: isEnable == false ? null : onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              isLoading == true
                  ? SizedBox(
                      height: 24.w,
                      width: 24.w,
                      child: CircularProgressIndicator(
                        strokeWidth: 4.w,
                        color: ColorTheme.white,
                      ),
                    )
                  : Text(
                      label,
                      textAlign: TextAlign.center,
                      style: FontTheme.semibold24.copyWith(
                        color: ColorTheme.white,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
