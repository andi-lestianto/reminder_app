import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_enum.dart';
import 'package:reminder_app/features/reminder/data/model/reminder_model.dart';

part 'reminder_entity.freezed.dart';

@freezed
abstract class ReminderEntity with _$ReminderEntity {
  const ReminderEntity._();

  const factory ReminderEntity({
    required int id,
    required String title,
    String? note,
    required DateTime dateTime,
    required ReminderTypeEnum reminderType,
    String? imagePath,
  }) = _ReminderEntity;

  ReminderModel toModel() {
    return ReminderModel(
      id: id,
      title: title,
      note: note,
      dateTimeEpoch: dateTime.millisecondsSinceEpoch,
      reminderType: reminderType.toString(),
      imagePath: imagePath,
    );
  }
}
