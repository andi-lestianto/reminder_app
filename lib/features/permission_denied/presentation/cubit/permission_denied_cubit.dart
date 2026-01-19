import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_denied_state.dart';
part 'permission_denied_cubit.freezed.dart';

@injectable
class PermissionDeniedCubit extends Cubit<PermissionDeniedState> {
  PermissionDeniedCubit() : super(PermissionDeniedState());

  Future<void> checkNotificationPermission() async {
    final notification = await Permission.notification.status;
    if (!notification.isGranted) {
      await Permission.notification.request();
    }

    if (notification.isPermanentlyDenied) {
      await openAppSettings();
    }

    final scheduleAlarm = await Permission.scheduleExactAlarm.status;
    if (!scheduleAlarm.isGranted) {
      await Permission.scheduleExactAlarm.request();
    }

    final isGranted =
        await Permission.notification.isGranted &&
        await Permission.scheduleExactAlarm.isGranted;

    emit(state.copyWith(permissionGranted: isGranted));
  }
}
