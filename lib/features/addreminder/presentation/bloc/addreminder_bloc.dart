import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/enum/reminder_type_enum.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';

part 'addreminder_event.dart';
part 'addreminder_state.dart';
part 'addreminder_bloc.freezed.dart';

@injectable
class AddReminderBloc extends Bloc<AddReminderEvent, AddReminderState> {
  AddReminderBloc() : super(AddReminderState.initial()) {
    on<AddReminderEvent>((event, emit) async {
      await event.when(
        started: () {},
        fillForm: (reminder) => fillForm(reminder, emit),
      );
    });
  }

  Future<void> fillForm(
    ReminderEntity? reminder,
    Emitter<AddReminderState> emit,
  ) async {
    if (reminder != null) {
      emit(
        AddReminderState(
          title: reminder.title,
          note: reminder.note,
          imagePath: reminder.imagePath,
          isRepeatEveryDay: reminder.isRepeatEveryDay,
          reminderType: reminder.reminderType,
        ),
      );
    }
  }
}
