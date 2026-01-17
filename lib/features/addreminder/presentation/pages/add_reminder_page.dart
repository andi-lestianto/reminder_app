import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';
import 'package:reminder_app/widget/custom_textfield.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 24.w,
            children: [
              Container(
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
              Text(
                'Add New',
                style: FontTheme.bold48.copyWith(color: ColorTheme.black),
              ),
              CustomTextFieldWidget(
                textEditingController: labelTextEditingController,
                labelText: 'Label',
                hintText: 'Enter label',
                isRequired: true,
              ),
              CustomTextFieldWidget(
                textEditingController: labelTextEditingController,
                labelText: 'Note',
                hintText: 'Enter note',
                maxLines: 3,
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
              CustomTextFieldWidget(
                textEditingController: labelTextEditingController,
                labelText: 'Additional Image',
                hintText: 'Select image',
                onButtonTap: () {},
                buttonIconPath: Assets.icons.addImage.path,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.w),
        child: Material(
          borderRadius: BorderRadius.circular(16.r),
          color: ColorTheme.blue,
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.w),
              child: Text(
                'Save Reminder',
                textAlign: TextAlign.center,
                style: FontTheme.semibold24.copyWith(color: ColorTheme.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
