import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reminder_app/core/presentation/states/action_status.dart';
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:reminder_app/features/reminder/presentation/widget/current_date_widget.dart';
import 'package:reminder_app/features/reminder/presentation/widget/reminders_widget.dart';
import 'package:reminder_app/features/reminder/presentation/widget/week_days_widget.dart';
import 'package:reminder_app/theme/color_theme.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReminderView();
  }
}

class ReminderView extends StatefulWidget {
  const ReminderView({super.key});

  @override
  State<ReminderView> createState() => _ReminderViewState();
}

class _ReminderViewState extends State<ReminderView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ReminderBloc>().add(const ReminderEvent.fetchAllData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReminderBloc, ReminderState>(
      listenWhen: (previous, current) =>
          previous.actionStatus != current.actionStatus,
      listener: (context, state) {
        state.actionStatus.maybeWhen(
          success: (message) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
          failure: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  message,
                  style: TextStyle(color: ColorTheme.white),
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
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
