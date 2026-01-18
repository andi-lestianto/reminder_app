part of 'addreminder_bloc.dart';

@freezed
class AddReminderEvent with _$AddReminderEvent {
  const factory AddReminderEvent.started() = _Started;
  const factory AddReminderEvent.fillForm({required ReminderEntity? reminder}) =
      _FillForm;
  const factory AddReminderEvent.dateTimeChanged(DateTime dateTime) =
      _DateTimeChanged;
  const factory AddReminderEvent.titleChanged(String title) = _TitleChanged;
  const factory AddReminderEvent.noteChanged(String? note) = _NoteChanged;
  const factory AddReminderEvent.imagePathChanged(String? imagePath) =
      _ImagePathChanged;
  const factory AddReminderEvent.isRepeatEveryDayChanged(
    bool isRepeatEveryDay,
  ) = _IsRepeatEveryDayChanged;
  const factory AddReminderEvent.reminderTypeChanged(
    ReminderTypeEnum reminderType,
  ) = _ReminderTypeChanged;
  const factory AddReminderEvent.pickImageFromGallery() = _PickImageFromGallery;
  const factory AddReminderEvent.saveReminder({
    required String title,
    required DateTime? dateTime,
    String? note,
    String? imagePath,
    required bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,
  }) = _SaveReminder;
}
