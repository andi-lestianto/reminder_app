import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reminder_app/core/utils/form_validator_utils.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController textEditingController;
  final String hintText;
  final int? maxLines;
  final VoidCallback? onButtonTap;
  final String? buttonIconPath;
  final String? Function(String?)? validator;
  final ValueChanged<String> onChanged;
  const CustomTextFormFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.labelText,

    this.maxLines = 1,
    this.onButtonTap,
    this.buttonIconPath,
    this.validator,
    required this.onChanged,
  });

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  bool isWithButton = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        isWithButton =
            widget.buttonIconPath != null && widget.onButtonTap != null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.w,
      children: [
        Text.rich(
          TextSpan(
            text: '${widget.labelText} ',
            style: FontTheme.semiBold20.copyWith(color: ColorTheme.black),
            children: [
              if (widget.validator == FormValidatorUtils.required)
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
                child: TextFormField(
                  readOnly: isWithButton,
                  validator: widget.validator,
                  controller: widget.textEditingController,
                  maxLines: widget.maxLines,
                  style: FontTheme.regular20.copyWith(color: ColorTheme.black),
                  onChanged: (value) {
                    widget.onChanged(value);
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorTheme.lightGray,
                    hintStyle: FontTheme.regular20.copyWith(
                      color: ColorTheme.darkGray,
                    ),
                    hintText: widget.hintText,

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
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(color: ColorTheme.red, width: 2.w),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(color: ColorTheme.red, width: 2.w),
                    ),
                    errorStyle: FontTheme.regular16.copyWith(
                      color: ColorTheme.red,
                    ),
                  ),
                ),
              ),

              if (isWithButton) ...[
                12.horizontalSpace,
                Container(
                  width: 70.w,

                  decoration: BoxDecoration(
                    color: ColorTheme.lightGray,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      widget.buttonIconPath!,
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
