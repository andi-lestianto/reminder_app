import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:shimmer/shimmer.dart';

class WeekdaysLoading extends StatelessWidget {
  const WeekdaysLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorTheme.gray.withValues(alpha: 0.1),
      highlightColor: ColorTheme.lightGray,
      child: Row(
        spacing: 8.w,
        children: [
          ...List.generate(
            7,
            (index) => Expanded(
              child: Container(
                height: 64.w,
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
