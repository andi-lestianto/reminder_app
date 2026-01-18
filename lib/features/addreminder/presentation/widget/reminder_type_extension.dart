import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_enum.dart';
import 'package:reminder_app/gen/assets.gen.dart';

extension ReminderTypeExtension on ReminderTypeEnum {
  String get name {
    switch (this) {
      case ReminderTypeEnum.notification:
        return 'Notification';
      case ReminderTypeEnum.alarm:
        return 'Alarm';
    }
  }

  String get iconPath {
    switch (this) {
      case ReminderTypeEnum.notification:
        return Assets.icons.bellNotificationSocialMedia.path;
      case ReminderTypeEnum.alarm:
        return Assets.icons.alarmClock.path;
    }
  }
}
