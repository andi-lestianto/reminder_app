import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CustomCheckboxWidget extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  final bool value;
  final String label;
  const CustomCheckboxWidget({
    super.key,
    required this.onChanged,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        spacing: 12.w,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: 24.w,
            height: 24.w,
            decoration: BoxDecoration(
              color: value ? ColorTheme.blue : ColorTheme.lightGray,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Center(
              child: Assets.icons.check.svg(
                width: 12.w,
                height: 12.w,
                colorFilter: ColorFilter.mode(
                  value ? ColorTheme.white : ColorTheme.lightGray,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Text(
            label,
            style: FontTheme.regular16.copyWith(color: ColorTheme.black),
          ),
        ],
      ),
    );
  }
}
