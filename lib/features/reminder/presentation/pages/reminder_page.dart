import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/core/di/injection.dart';
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:reminder_app/features/reminder/presentation/widget/current_date_widget.dart';
import 'package:reminder_app/features/reminder/presentation/widget/reminders_widget.dart';
import 'package:reminder_app/features/reminder/presentation/widget/week_days_widget.dart';
import 'package:reminder_app/theme/color_theme.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ReminderBloc>()..add(const ReminderEvent.fetchAllData()),
      child: const ReminderView(),
    );
  }
}

class ReminderView extends StatelessWidget {
  const ReminderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorTheme.white,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(40.w),
              child: Column(
                spacing: 32.w,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CurrentDateWidget(),
                  WeekDaysWidget(),
                  RemindersWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
