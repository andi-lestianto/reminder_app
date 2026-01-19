import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/core/di/injection.dart';
import 'package:reminder_app/features/permission_denied/presentation/cubit/permission_denied_cubit.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/routes/route_names.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';

class PermissionDeniedPage extends StatelessWidget {
  const PermissionDeniedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PermissionDeniedCubit>(),
      child: PermissionDeniedView(),
    );
  }
}

class PermissionDeniedView extends StatelessWidget {
  const PermissionDeniedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PermissionDeniedCubit, PermissionDeniedState>(
      listenWhen: (previous, current) {
        return previous.permissionGranted != current.permissionGranted;
      },
      listener: (context, state) {
        if (state.permissionGranted == true) {
          context.pushReplacementNamed(RouteNames.mainScreen);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorTheme.white,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              spacing: 12.w,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.lottie.bugLottie.lottie(width: 400.w),
                Text(
                  'This app requires notification\npermission to function properly.',
                  textAlign: TextAlign.center,
                  style: FontTheme.semibold24.copyWith(color: ColorTheme.black),
                ),
                Text(
                  'Please enable notification permission\nin your device settings.',
                  style: FontTheme.medium20.copyWith(color: ColorTheme.gray),
                ),
                Material(
                  clipBehavior: Clip.antiAlias,
                  color: ColorTheme.lightBlue,
                  borderRadius: BorderRadius.circular(100.r),
                  child: InkWell(
                    onTap: () {
                      context
                          .read<PermissionDeniedCubit>()
                          .checkNotificationPermission();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 12.w,
                      ),
                      child: Text(
                        'Request Permission',
                        style: FontTheme.medium20.copyWith(
                          color: ColorTheme.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
