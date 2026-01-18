import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'dart:developer';

import 'package:reminder_app/theme/font_theme.dart';

class CustomWheelDatepicker extends StatefulWidget {
  const CustomWheelDatepicker({super.key});

  @override
  State<CustomWheelDatepicker> createState() => _CustomWheelDatepickerState();
}

class _CustomWheelDatepickerState extends State<CustomWheelDatepicker> {
  int selectedHour = 0;
  int selectedMinute = 0;

  String selectedTime = '00:00';

  void _onSelectedItemChanged({required int index, required bool isHour}) {
    setState(() {
      if (isHour) {
        selectedHour = index;
      } else {
        selectedMinute = index;
      }
    });
    selectedTime =
        '${selectedHour.toString().padLeft(2, '0')}:${selectedMinute.toString().padLeft(2, '0')}';
    log('Selected Time: $selectedTime');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      height: 240.w,
      child: Row(
        children: [
          Flexible(
            child: ListWheelScrollView.useDelegate(
              childDelegate: ListWheelChildLoopingListDelegate(
                children: List.generate(24, (index) {
                  final hour = index.toString().padLeft(2, '0');
                  return Center(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: selectedHour == index
                          ? FontTheme.medium64.copyWith(color: ColorTheme.blue)
                          : FontTheme.regular48.copyWith(
                              color: ColorTheme.gray,
                            ),
                      child: Text(hour),
                    ),
                  );
                }),
              ),
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: (value) {
                _onSelectedItemChanged(index: value, isHour: true);
              },
              diameterRatio: 4.0,
              itemExtent: 64.w * 1.2, //
            ),
          ),
          VerticalDivider(thickness: 2.w, color: ColorTheme.lightGray),
          Flexible(
            child: ListWheelScrollView.useDelegate(
              childDelegate: ListWheelChildLoopingListDelegate(
                children: List.generate(60, (index) {
                  final minute = index.toString().padLeft(2, '0');
                  return Center(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: selectedMinute == index
                          ? FontTheme.medium64.copyWith(color: ColorTheme.blue)
                          : FontTheme.regular48.copyWith(
                              color: ColorTheme.gray,
                            ),
                      child: Text(minute),
                    ),
                  );
                }),
              ),
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: (value) {
                _onSelectedItemChanged(index: value, isHour: false);
              },
              diameterRatio: 3.14,
              itemExtent: 64.w * 1.2, //
            ),
          ),
        ],
      ),
    );
  }
}
