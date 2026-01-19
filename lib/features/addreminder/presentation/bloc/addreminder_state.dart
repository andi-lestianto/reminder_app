part of 'addreminder_bloc.dart';

@freezed
abstract class AddReminderState with _$AddReminderState {
  const factory AddReminderState({
    required DateTime selectedDate,
    required String title,
    String? note,
    String? imagePath,
    @Default(false) bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,

    ReminderEntity? editedReminder,
    @Default(ActionStatus.idle()) ActionStatus actionStatus,
  }) = _AddReminderState;

  factory AddReminderState.initial() => AddReminderState(
    selectedDate: DateTime.now(),
    title: '',
    note: null,
    imagePath: null,
    isRepeatEveryDay: false,
    reminderType: ReminderTypeEnum.notification,
  );
}
