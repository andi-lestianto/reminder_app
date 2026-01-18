import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/routes/route_names.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class ReminderActionWidget extends StatelessWidget {
  final ReminderEntity reminder;
  const ReminderActionWidget({super.key, required this.reminder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
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
                  context.pushNamed(RouteNames.addReminder, extra: reminder);
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
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.w),
                  child: Row(
                    spacing: 12.w,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.trash.svg(
                        width: 32.w,
                        height: 32.w,
                        colorFilter: const ColorFilter.mode(
                          ColorTheme.red,
                          BlendMode.srcIn,
                        ),
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
  }
}
