import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/theme/color_theme.dart';

import 'package:reminder_app/theme/font_theme.dart';

class CustomWheelDatepicker extends StatefulWidget {
  final ValueChanged<DateTime> onTimeChanged;
  final DateTime initialDateTime;
  const CustomWheelDatepicker({
    super.key,
    required this.onTimeChanged,
    required this.initialDateTime,
  });

  @override
  State<CustomWheelDatepicker> createState() => _CustomWheelDatepickerState();
}

class _CustomWheelDatepickerState extends State<CustomWheelDatepicker> {
  final FixedExtentScrollController hourController = .new();
  final FixedExtentScrollController minuteController = .new();

  bool isInitialSyncDone = false;

  int selectedHour = 0;
  int selectedMinute = 0;

  void _onSelectedItemChanged({required int index, required bool isHour}) {
    final base = widget.initialDateTime;
    setState(() {
      if (isHour) {
        selectedHour = index;
      } else {
        selectedMinute = index;
      }
    });

    final selectedDateTime = DateTime(
      base.year,
      base.month,
      base.day,
      selectedHour,
      selectedMinute,
    );

    if (isInitialSyncDone) {
      widget.onTimeChanged(selectedDateTime);
    }
  }

  void _syncFromWidget(DateTime dt) async {
    selectedHour = dt.hour;
    selectedMinute = dt.minute;

    hourController.jumpToItem(selectedHour);
    minuteController.jumpToItem(selectedMinute);
  }

  // @override
  // void initState() {
  //   super.initState();

  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     _syncFromWidget(widget.initialDateTime);
  //     isInitialSyncDone = true;
  //   });
  // }

  @override
  void didUpdateWidget(covariant CustomWheelDatepicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialDateTime != widget.initialDateTime) {
      isInitialSyncDone = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _syncFromWidget(widget.initialDateTime);
        isInitialSyncDone = true;
      });
    }
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
              controller: hourController,
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
              controller: minuteController,
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
