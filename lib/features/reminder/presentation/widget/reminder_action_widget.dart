import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/core/presentation/states/action_status.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:reminder_app/features/reminder/presentation/widget/delete_confirmation_widget.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/routes/route_names.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class ReminderActionWidget extends StatelessWidget {
  final ReminderEntity reminder;
  const ReminderActionWidget({super.key, required this.reminder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.r),
              topRight: Radius.circular(32.r),
            ),
          ),
          child: Column(
            spacing: 12.w,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: ColorTheme.lightBlue,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.pop();
                      context.pushNamed(
                        RouteNames.addReminder,
                        extra: {
                          'date': state.selectedDate,
                          'reminder': reminder,
                        },
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.w),

                      child: Row(
                        spacing: 12.w,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.fileEdit.svg(
                            width: 32.w,
                            height: 32.w,
                            colorFilter: const ColorFilter.mode(
                              ColorTheme.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                          Text(
                            'Edit Reminder',
                            style: FontTheme.regular24.copyWith(
                              color: ColorTheme.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: ColorTheme.lightRed,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      final shouldDelete = await showDialog<bool>(
                        context: context,
                        builder: (context) {
                          return DeleteConfirmationWidget();
                        },
                      );
                      if (shouldDelete != true) return;
                      if (context.mounted) {
                        context.read<ReminderBloc>().add(
                          ReminderEvent.deleteReminder(reminder.id),
                        );
                        context.pop();
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.w),
                      child: Row(
                        spacing: 12.w,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          state.actionStatus.maybeWhen(
                            orElse: () => Assets.icons.trash.svg(
                              width: 32.w,
                              height: 32.w,
                              colorFilter: const ColorFilter.mode(
                                ColorTheme.red,
                                BlendMode.srcIn,
                              ),
                            ),
                            loading: () {
                              return SizedBox(
                                width: 32.w,
                                height: 32.w,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.w,
                                  color: ColorTheme.red,
                                ),
                              );
                            },
                          ),

                          Text(
                            'Delete Reminder',
                            style: FontTheme.regular24.copyWith(
                              color: ColorTheme.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Cancel',
                            style: FontTheme.semibold24.copyWith(
                              color: ColorTheme.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
