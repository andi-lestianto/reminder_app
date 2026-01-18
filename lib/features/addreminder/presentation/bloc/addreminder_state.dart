part of 'addreminder_bloc.dart';

@freezed
abstract class AddReminderState with _$AddReminderState {
  const factory AddReminderState({
    required DateTime? dateTime,
    required String title,
    String? note,
    String? imagePath,
    @Default(false) bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,
    @Default(false) bool isLoading,
    int? savedReminderId,
  }) = _AddReminderState;

  factory AddReminderState.initial() => AddReminderState(
    dateTime: null,
    title: '',
    note: null,
    imagePath: null,
    isRepeatEveryDay: false,
    reminderType: ReminderTypeEnum.notification,
    isLoading: false,
    savedReminderId: null,
  );
}
