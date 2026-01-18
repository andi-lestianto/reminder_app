import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class DeleteConfirmationWidget extends StatelessWidget {
  const DeleteConfirmationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.w),
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 24.w,
          children: [
            Text(
              'Are you sure you want to delete this reminder?',
              style: FontTheme.regular24.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          context.pop(false);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.w),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: FontTheme.regular20.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: ColorTheme.lightRed,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          context.pop(true);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.w),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: FontTheme.regular20.copyWith(
                                color: ColorTheme.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
