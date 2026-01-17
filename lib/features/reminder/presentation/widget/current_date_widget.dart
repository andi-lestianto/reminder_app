import 'package:flutter/material.dart';
import 'package:reminder_app/core/utils/datetime_utils.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class CurrentDateWidget extends StatelessWidget {
  const CurrentDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DateTimeUtils.getDateTimeNow(),
          style: FontTheme.medium20.copyWith(color: ColorTheme.darkGray),
        ),
        Text(
          'Today',
          style: FontTheme.bold48.copyWith(color: ColorTheme.black),
        ),
      ],
    );
  }
}
