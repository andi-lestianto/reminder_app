part of 'addreminder_bloc.dart';

@freezed
abstract class AddReminderState with _$AddReminderState {
  const factory AddReminderState({
    required String title,
    @Default('') String? note,
    @Default('') String? imagePath,
    @Default(false) bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,
  }) = _AddReminderState;

  factory AddReminderState.initial() => AddReminderState(
    title: '',
    note: '',
    imagePath: '',
    isRepeatEveryDay: false,
    reminderType: ReminderTypeEnum.notification,
  );
}
