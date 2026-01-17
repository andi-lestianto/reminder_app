import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/core/presentation/states/section_state.dart';
import 'package:reminder_app/core/utils/datetime_utils.dart';
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class WeekDaysWidget extends StatelessWidget {
  const WeekDaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (context, state) {
        return state.weekDatesState.when(
          initial: () => const SizedBox(),
          loading: () =>
              Center(child: CircularProgressIndicator(color: ColorTheme.blue)),
          loaded: (weekDates) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: weekDates.map((date) {
              bool isToday = DateTimeUtils.isSameWithNow(date);
              return Column(
                spacing: 4.w,
                children: [
                  Text(
                    DateTimeUtils.getDayAbbrFromDateTime(date),
                    style: isToday
                        ? FontTheme.semiBold20.copyWith(color: ColorTheme.blue)
                        : FontTheme.medium20.copyWith(
                            color: ColorTheme.darkGray,
                          ),
                  ),
                  Text(
                    DateTimeUtils.getDayFromDateTime(date),
                    style: isToday
                        ? FontTheme.semiBold20.copyWith(color: ColorTheme.blue)
                        : FontTheme.medium20.copyWith(color: ColorTheme.black),
                  ),
                  Container(
                    width: 4.w,
                    height: 4.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isToday ? ColorTheme.blue : Colors.transparent,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
          error: (message) => Center(
            child: Text(
              message,
              style: FontTheme.regular16.copyWith(color: ColorTheme.red),
            ),
          ),
        );
      },
    );
  }
}
