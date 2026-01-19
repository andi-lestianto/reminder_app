import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reminder_app/theme/color_theme.dart';

class ToastUtils {
  static void showSuccessToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: ColorTheme.blue,
      textColor: ColorTheme.white,
      fontSize: 24.sp,
    );
  }

  static void showErrorToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: ColorTheme.red,
      textColor: ColorTheme.white,
      fontSize: 24.sp,
    );
  }
}
