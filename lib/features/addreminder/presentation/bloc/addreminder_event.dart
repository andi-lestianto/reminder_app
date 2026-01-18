part of 'addreminder_bloc.dart';

@freezed
class AddReminderEvent with _$AddReminderEvent {
  const factory AddReminderEvent.started() = _Started;
  const factory AddReminderEvent.fillForm({required ReminderEntity? reminder}) =
      _FillForm;
}
