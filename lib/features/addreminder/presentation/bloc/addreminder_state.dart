part of 'addreminder_bloc.dart';

@freezed
abstract class AddReminderState with _$AddReminderState {
  const factory AddReminderState({
    required DateTime dateTime,
    required String title,
    String? note,
    String? imagePath,
    @Default(false) bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,

    @Default(ActionStatus.idle()) ActionStatus actionStatus,
  }) = _AddReminderState;

  factory AddReminderState.initial() => AddReminderState(
    dateTime: DateTime.now(),
    title: '',
    note: null,
    imagePath: null,
    isRepeatEveryDay: false,
    reminderType: ReminderTypeEnum.notification,
  );
}
