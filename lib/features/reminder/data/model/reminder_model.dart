import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_enum.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';

part 'reminder_model.freezed.dart';
part 'reminder_model.g.dart';

@freezed
abstract class ReminderModel with _$ReminderModel {
  const ReminderModel._();

  const factory ReminderModel({
    int? id,
    String? title,
    String? note,
    int? dateTimeEpoch,
    String? reminderType,
    String? imagePath,
  }) = _ReminderModel;

  factory ReminderModel.fromJson(Map<String, Object?> json) =>
      _$ReminderModelFromJson(json);

  ReminderEntity toEntity() {
    return ReminderEntity(
      id: id!,
      title: title ?? '',
      note: note,
      dateTime: DateTime.fromMillisecondsSinceEpoch(dateTimeEpoch ?? 0),
      reminderType: ReminderTypeEnum.values.firstWhere(
        (e) => e.toString() == reminderType,
        orElse: () => ReminderTypeEnum.notification,
      ),
      imagePath: imagePath,
    );
  }
}
