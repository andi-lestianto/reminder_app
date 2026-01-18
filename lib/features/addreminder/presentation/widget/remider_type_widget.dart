import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_enum.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_extension.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class ReminderTypeWidget extends StatefulWidget {
  final ValueChanged<ReminderTypeEnum> onChanged;
  final ReminderTypeEnum selectedType;
  const ReminderTypeWidget({
    super.key,
    required this.onChanged,
    required this.selectedType,
  });

  @override
  State<ReminderTypeWidget> createState() => _ReminderTypeWidgetState();
}

class _ReminderTypeWidgetState extends State<ReminderTypeWidget> {
  List<ReminderTypeEnum> reminderTypes = [
    ReminderTypeEnum.notification,
    ReminderTypeEnum.alarm,
  ];

  ReminderTypeEnum selectedReminderType = ReminderTypeEnum.notification;

  void setSelectedReminderType(ReminderTypeEnum type) {
    setState(() {
      selectedReminderType = type;
      widget.onChanged(type);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setSelectedReminderType(widget.selectedType);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: 'Type',
            style: FontTheme.semiBold20.copyWith(color: ColorTheme.black),
          ),
        ),
        12.verticalSpace,
        Row(
          spacing: 24.w,
          children: List.generate(reminderTypes.length, (index) {
            final reminderType = reminderTypes[index];
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setSelectedReminderType(reminderType);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: EdgeInsets.symmetric(vertical: 24.w),
                  decoration: BoxDecoration(
                    color: reminderType == selectedReminderType
                        ? ColorTheme.blue
                        : ColorTheme.lightGray,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        reminderType.iconPath,
                        height: 32.w,
                        width: 32.w,
                        colorFilter: ColorFilter.mode(
                          reminderType == selectedReminderType
                              ? ColorTheme.white
                              : ColorTheme.darkGray,
                          BlendMode.srcIn,
                        ),
                      ),
                      12.verticalSpace,
                      Text(
                        reminderType.name,
                        style: FontTheme.regular16.copyWith(
                          color: reminderType == selectedReminderType
                              ? ColorTheme.white
                              : ColorTheme.darkGray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
