part of 'reminder_bloc.dart';

@freezed
abstract class ReminderState with _$ReminderState {
  const factory ReminderState({
    required SectionState<DateTime> weekDatesState,
    required SectionState<ReminderEntity> remindersState,
    ReminderEntity? upComingReminder,
    DateTime? selectedDate,

    @Default(ActionStatus.idle()) ActionStatus actionStatus,
  }) = _ReminderState;

  factory ReminderState.initial() => ReminderState(
    weekDatesState: const SectionState.initial(),
    remindersState: const SectionState.initial(),
    selectedDate: DateTime.now(),
  );
}
