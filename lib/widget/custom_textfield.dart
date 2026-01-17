import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController textEditingController;
  final String hintText;
  final bool? isRequired;
  final int? maxLines;
  final VoidCallback? onButtonTap;
  final String? buttonIconPath;
  const CustomTextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.labelText,
    this.isRequired = false,
    this.maxLines = 1,
    this.onButtonTap,
    this.buttonIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.w,
      children: [
        Text.rich(
          TextSpan(
            text: '$labelText ',
            style: FontTheme.semiBold20.copyWith(color: ColorTheme.black),
            children: [
              if (isRequired == true)
                TextSpan(
                  text: '*',
                  style: FontTheme.semiBold20.copyWith(color: ColorTheme.red),
                ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingController,
                  maxLines: maxLines,
                  style: FontTheme.regular20.copyWith(color: ColorTheme.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorTheme.lightGray,
                    hintStyle: FontTheme.regular20.copyWith(
                      color: ColorTheme.darkGray,
                    ),
                    hintText: hintText,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              if (onButtonTap != null && buttonIconPath != null) ...[
                12.horizontalSpace,
                Container(
                  width: 70.w,

                  decoration: BoxDecoration(
                    color: ColorTheme.lightGray,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      buttonIconPath!,
                      width: 24.w,
                      height: 24.w,
                      colorFilter: ColorFilter.mode(
                        ColorTheme.darkGray,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
