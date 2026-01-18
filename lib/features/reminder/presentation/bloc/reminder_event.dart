part of 'reminder_bloc.dart';

@freezed
class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.fetchAllData() = _FetchAllData;
  const factory ReminderEvent.fetchWeekDates() = _FetchWeekDates;
  const factory ReminderEvent.fetchReminders() = _FetchReminders;
  const factory ReminderEvent.deleteReminder(int id) = _DeleteReminder;
}
