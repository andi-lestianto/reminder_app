import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/core/enum/reminder_type_enum.dart';
import 'package:reminder_app/gen/assets.gen.dart';

part 'reminder_entity.freezed.dart';

@freezed
abstract class ReminderEntity with _$ReminderEntity {
  const ReminderEntity._();

  const factory ReminderEntity({
    required int id,
    required String title,
    required String note,
    required DateTime dateTime,
    required bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,
    String? imagePath,
  }) = _ReminderEntity;

  static List<ReminderEntity> get sampleReminders {
    return [
      ReminderEntity(
        id: 1,
        title: 'Doctor Appointment',
        note:
            'Sit eu Lorem adipisicing esse esse eu qui adipisicing nulla ipsum.',
        dateTime: DateTime.now().subtract(Duration(minutes: 10)),
        isRepeatEveryDay: false,
        reminderType: ReminderTypeEnum.notification,
        imagePath: null,
      ),
      ReminderEntity(
        id: 2,
        title: 'Meeting with Team',
        note:
            'Eiusmod dolore enim eu anim excepteur fugiat et consequat laborum sit nulla nisi deserunt adipisicing.',
        dateTime: DateTime.now().add(Duration(minutes: 10)),
        isRepeatEveryDay: false,
        reminderType: ReminderTypeEnum.alarm,
        imagePath: Assets.images.dummyRecipe.path,
      ),
      ReminderEntity(
        id: 3,
        title: 'Grocery Shopping',
        note: 'Id exercitation labore eu amet ad dolor nostrud fugiat non est.',
        dateTime: DateTime.now().add(Duration(minutes: 20)),
        isRepeatEveryDay: false,
        reminderType: ReminderTypeEnum.notification,
        imagePath: null,
      ),
      ReminderEntity(
        id: 4,
        title: 'Workout Session',
        note: 'Aute officia pariatur minim veniam commodo consequat.',
        dateTime: DateTime.now().add(Duration(minutes: 30)),
        isRepeatEveryDay: true,
        reminderType: ReminderTypeEnum.notification,
        imagePath: null,
      ),
    ];
  }
}

// class ReminderEntity {
//   final int id;
//   final String title;
//   final String description;
//   final DateTime dateTime;
//   final String? imagePath;

//   ReminderEntity({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.dateTime,
//     this.imagePath,
//   });

// }
