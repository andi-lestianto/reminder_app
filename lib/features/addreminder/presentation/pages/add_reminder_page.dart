import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/core/utils/form_validator_utils.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';
import 'package:reminder_app/widget/custom_button_widget.dart';
import 'package:reminder_app/widget/custom_checkbox_widget.dart';
import 'package:reminder_app/widget/custom_textformfield_widget.dart';
import 'package:reminder_app/widget/custom_wheel_datepicker_widget.dart';

class AddReminderPage extends StatelessWidget {
  const AddReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AddReminderView();
  }
}

class AddReminderView extends StatefulWidget {
  const AddReminderView({super.key});

  @override
  State<AddReminderView> createState() => _AddReminderViewState();
}

class _AddReminderViewState extends State<AddReminderView> {
  final TextEditingController labelTextEditingController = .new();
  final TextEditingController noteTextEditingController = .new();
  final TextEditingController additionalImageTextEditingController = .new();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isRepeatEveryDay = false;

  void setRepeatEveryDay(bool val) {
    setState(() {
      isRepeatEveryDay = val;
    });
  }

  bool isFormValid = false;

  void validateForm() {
    final isValid = formKey.currentState?.validate() ?? false;
    setState(() {
      isFormValid = isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorTheme.white,
        appBar: AppBar(
          toolbarHeight: 102.w,
          // actionsPadding: EdgeInsets.zero,
          automaticallyImplyLeading: false,
          // surfaceTintColor: ColorTheme.blue,
          backgroundColor: ColorTheme.white,
          title: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: ColorTheme.lightGray,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  context.pop();
                },
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Assets.icons.arrowSmallRight.svg(
                      height: 32.w,
                      width: 32.w,
                      colorFilter: ColorFilter.mode(
                        ColorTheme.darkGray,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Form(
              key: formKey,
              // autovalidateMode: AutovalidateMode.,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 24.w,
                children: [
                  Text(
                    'Add New',
                    style: FontTheme.bold48.copyWith(color: ColorTheme.black),
                  ),
                  CustomWheelDatepicker(),
                  Center(
                    child: CustomCheckboxWidget(
                      onChanged: (val) {
                        setRepeatEveryDay(val);
                      },
                      value: isRepeatEveryDay,
                      label: 'Repeat Every Day',
                    ),
                  ),

                  CustomTextFormFieldWidget(
                    textEditingController: labelTextEditingController,
                    labelText: 'Label',
                    hintText: 'Enter label',
                    validator: FormValidatorUtils.required,
                    onChanged: (value) {
                      validateForm();
                    },
                  ),
                  CustomTextFormFieldWidget(
                    textEditingController: noteTextEditingController,
                    labelText: 'Note',
                    hintText: 'Enter note',
                    maxLines: 3,
                    onChanged: (value) {
                      validateForm();
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Type',
                          style: FontTheme.semiBold20.copyWith(
                            color: ColorTheme.black,
                          ),
                        ),
                      ),
                      12.verticalSpace,
                      Row(
                        spacing: 24.w,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 24.w),
                              decoration: BoxDecoration(
                                color: ColorTheme.blue,
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Column(
                                children: [
                                  Assets.icons.bellNotificationSocialMedia.svg(
                                    height: 32.w,
                                    width: 32.w,
                                    colorFilter: ColorFilter.mode(
                                      ColorTheme.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  12.verticalSpace,
                                  Text(
                                    'Notification Only',
                                    style: FontTheme.regular16.copyWith(
                                      color: ColorTheme.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 24.w),
                              decoration: BoxDecoration(
                                color: ColorTheme.lightGray,
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Column(
                                children: [
                                  Assets.icons.alarmClock.svg(
                                    height: 32.w,
                                    width: 32.w,
                                    colorFilter: ColorFilter.mode(
                                      ColorTheme.darkGray,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  12.verticalSpace,
                                  Text(
                                    'Activate Alarm',
                                    style: FontTheme.regular16.copyWith(
                                      color: ColorTheme.darkGray,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomTextFormFieldWidget(
                    textEditingController: additionalImageTextEditingController,
                    labelText: 'Additional Image',
                    hintText: 'Select image',
                    onButtonTap: () {},
                    buttonIconPath: Assets.icons.addImage.path,
                    onChanged: (value) {
                      validateForm();
                    },
                  ),
                  SizedBox(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.w),
          decoration: BoxDecoration(
            color: ColorTheme.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 15,
                blurRadius: 60,
                color: ColorTheme.darkGray.withValues(alpha: 0.08),
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: CustomButtonWidget(
            isEnable: isFormValid,
            label: 'Save Reminder',
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
