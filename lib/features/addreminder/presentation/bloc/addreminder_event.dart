part of 'addreminder_bloc.dart';

@freezed
class AddReminderEvent with _$AddReminderEvent {
  const factory AddReminderEvent.started() = _Started;
  const factory AddReminderEvent.initAddReminder({
    required ReminderEntity? reminder,
    required DateTime selectedDate,
  }) = _InitAddReminder;
  const factory AddReminderEvent.selectedDateTimeChanged(DateTime dateTime) =
      _SelectedDateTimeChanged;
  const factory AddReminderEvent.titleChanged(String title) = _TitleChanged;
  const factory AddReminderEvent.noteChanged(String? note) = _NoteChanged;
  const factory AddReminderEvent.imagePathChanged(String? imagePath) =
      _ImagePathChanged;
  const factory AddReminderEvent.pickImageFromGallery() = _PickImageFromGallery;
  const factory AddReminderEvent.saveReminder({
    required String title,
    required DateTime? dateTime,
    String? note,
    String? imagePath,
  }) = _SaveReminder;

  const factory AddReminderEvent.updateReminder({
    required int id,
    required String title,
    required DateTime? dateTime,
    String? note,
    String? imagePath,
  }) = _UpdateReminder;
}
