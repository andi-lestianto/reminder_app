import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/gen/assets.gen.dart';

part 'reminder_entity.freezed.dart';

@freezed
abstract class ReminderEntity with _$ReminderEntity {
  const ReminderEntity._();

  const factory ReminderEntity({
    required int id,
    required String title,
    required String description,
    required DateTime dateTime,
    String? imagePath,
  }) = _ReminderEntity;

  static List<ReminderEntity> get sampleReminders {
    return [
      ReminderEntity(
        id: 1,
        title: 'Doctor Appointment',
        description:
            'Sit eu Lorem adipisicing esse esse eu qui adipisicing nulla ipsum.',
        dateTime: DateTime.now().subtract(Duration(minutes: 10)),
        imagePath: null,
      ),
      ReminderEntity(
        id: 2,
        title: 'Meeting with Team',
        description:
            'Eiusmod dolore enim eu anim excepteur fugiat et consequat laborum sit nulla nisi deserunt adipisicing.',
        dateTime: DateTime.now().add(Duration(minutes: 10)),
        imagePath: Assets.images.dummyRecipe.path,
      ),
      ReminderEntity(
        id: 3,
        title: 'Grocery Shopping',
        description:
            'Id exercitation labore eu amet ad dolor nostrud fugiat non est.',
        dateTime: DateTime.now().add(Duration(minutes: 20)),
        imagePath: null,
      ),
      ReminderEntity(
        id: 4,
        title: 'Workout Session',
        description: 'Aute officia pariatur minim veniam commodo consequat.',
        dateTime: DateTime.now().add(Duration(minutes: 30)),
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
