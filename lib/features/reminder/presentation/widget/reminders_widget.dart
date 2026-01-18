import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/core/presentation/states/section_state.dart';
import 'package:reminder_app/core/utils/datetime_utils.dart';
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:reminder_app/features/reminder/presentation/widget/reminder_action_widget.dart';
import 'package:reminder_app/routes/route_names.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class RemindersWidget extends StatelessWidget {
  const RemindersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (context, state) {
        return state.remindersState.when(
          initial: () => const SizedBox(),
          loading: () =>
              Center(child: CircularProgressIndicator(color: ColorTheme.blue)),
          loaded: (reminders) => Column(
            spacing: 8.w,
            children: List.generate(reminders.length, (index) {
              final reminder = reminders[index];
              final isUpcoming =
                  state.upComingReminder != null &&
                  reminder.id == state.upComingReminder!.id;
              return IntrinsicHeight(
                child: Row(
                  children: [
                    SizedBox(
                      width: 32.w,
                      child: Column(
                        spacing: 8.w,
                        children: [
                          if (isUpcoming) ...[
                            Container(
                              width: 28.w,
                              height: 28.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorTheme.white,
                                border: Border.all(
                                  color: ColorTheme.blue,
                                  width: 3.w,
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  width: 16.w,
                                  height: 16.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorTheme.blue,
                                  ),
                                ),
                              ),
                            ),
                          ] else ...[
                            Container(
                              width: 18.w,
                              height: 18.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorTheme.blue,
                              ),
                            ),
                          ],

                          Expanded(
                            flex: index == reminders.length - 1 ? 0 : 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorTheme.blue,
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                              width: 4.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                    24.horizontalSpace,
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return ReminderActionWidget(reminder: reminder);
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 16.w),
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 16.w,
                          ),
                          decoration: BoxDecoration(
                            color: isUpcoming
                                ? ColorTheme.blue
                                : ColorTheme.lightBlue,
                            borderRadius: BorderRadius.circular(30.w),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 16.w,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      reminder.title,
                                      style: FontTheme.semiBold20.copyWith(
                                        color: isUpcoming
                                            ? ColorTheme.white
                                            : ColorTheme.black,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    DateTimeUtils.getTimeFromDateTime(
                                      reminder.dateTime,
                                    ),
                                    style: FontTheme.medium20.copyWith(
                                      color: isUpcoming
                                          ? ColorTheme.white
                                          : ColorTheme.gray,
                                    ),
                                  ),
                                ],
                              ),
                              8.verticalSpace,
                              Text(
                                reminder.note,
                                style: FontTheme.medium18.copyWith(
                                  color: isUpcoming
                                      ? ColorTheme.white
                                      : ColorTheme.gray,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              if (reminder.imagePath != null) ...[
                                12.verticalSpace,
                                InkWell(
                                  onTap: () {
                                    context.pushNamed(
                                      RouteNames.imageDetails,
                                      // pathParameters: ,
                                      queryParameters: {
                                        'imagePath': reminder.imagePath!,
                                      },
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.r),
                                    child: Hero(
                                      tag: 'reminder_image',
                                      child: Image.asset(
                                        reminder.imagePath!,
                                        width: double.infinity,
                                        height: 200.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
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
