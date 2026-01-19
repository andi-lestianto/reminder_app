import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AndroidAlarmService {
  const AndroidAlarmService();

  Future<void> createNewAlarm({
    required int id,
    required DateTime time,
    required Function callback,
  }) async {
    await AndroidAlarmManager.oneShotAt(
      time,
      id,
      callback,
      exact: true,
      wakeup: true,
      rescheduleOnReboot: true,
    );
  }

  Future<void> cancelAlarm(int id) async {
    await AndroidAlarmManager.cancel(id);
  }
}
