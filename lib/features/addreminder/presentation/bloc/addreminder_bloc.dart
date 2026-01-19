import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/presentation/states/action_status.dart';
import 'package:reminder_app/core/services/android_alarm_service.dart';
import 'package:reminder_app/core/services/image_picker_service.dart';
import 'package:reminder_app/core/utils/alarm_callback.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/domain/usecase/create_reminders_usecase.dart';
import 'package:reminder_app/features/reminder/domain/usecase/update_reminders_usecase.dart';

part 'addreminder_event.dart';
part 'addreminder_state.dart';
part 'addreminder_bloc.freezed.dart';

@injectable
class AddReminderBloc extends Bloc<AddReminderEvent, AddReminderState> {
  final ImagePickerService imagePickerService;
  final CreateRemindersUsecase createRemindersUsecase;
  final UpdateRemindersUsecase updateRemindersUsecase;
  final AndroidAlarmService androidAlarmService;
  AddReminderBloc(
    this.imagePickerService,
    this.createRemindersUsecase,
    this.updateRemindersUsecase,
    this.androidAlarmService,
  ) : super(AddReminderState.initial()) {
    on<AddReminderEvent>((event, emit) async {
      await event.when(
        started: () {},
        initAddReminder: (reminder, selectedDate) =>
            initAddReminder(reminder, selectedDate, emit),
        selectedDateTimeChanged: (selectedDate) =>
            selectedDateTimeChanged(selectedDate, emit),
        titleChanged: (title) => titleChanged(title, emit),
        noteChanged: (note) => noteChanged(note, emit),
        imagePathChanged: (imagePath) => imagePathChanged(imagePath, emit),

        pickImageFromGallery: () => pickImageFromGallery(emit),
        saveReminder: (title, selectedDateTime, note, imagePath) =>
            saveReminder(
              emit: emit,
              title: title,
              dateTime: selectedDateTime,
              note: note,
              imagePath: imagePath,
            ),
        updateReminder: (id, title, selectedDateTime, note, imagePath) =>
            updateReminder(
              emit: emit,
              id: id,
              title: title,
              dateTime: selectedDateTime,
              note: note,
              imagePath: imagePath,
            ),
      );
    });
  }

  Future<void> initAddReminder(
    ReminderEntity? reminder,
    DateTime selectedDate,
    Emitter<AddReminderState> emit,
  ) async {
    if (reminder != null) {
      emit(
        state.copyWith(
          selectedDate: reminder.dateTime,
          title: reminder.title,
          note: reminder.note,
          imagePath: reminder.imagePath,
          editedReminder: reminder,
        ),
      );
    } else {
      final DateTime now = DateTime.now();
      final DateTime currentDate = DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
        now.hour,
        now.minute,
      );
      emit(state.copyWith(selectedDate: currentDate));
    }
  }

  Future<void> selectedDateTimeChanged(
    DateTime dateTime,
    Emitter<AddReminderState> emit,
  ) async {
    final prevDate = state.selectedDate;
    // final now = DateTime(n)
    final updatedDateTime = DateTime(
      prevDate.year,
      prevDate.month,
      prevDate.day,
      dateTime.hour,
      dateTime.minute,
    );

    emit(state.copyWith(selectedDate: updatedDateTime));
  }

  Future<void> titleChanged(
    String title,
    Emitter<AddReminderState> emit,
  ) async {
    emit(state.copyWith(title: title));
  }

  Future<void> noteChanged(String? note, Emitter<AddReminderState> emit) async {
    emit(state.copyWith(note: note));
  }

  Future<void> imagePathChanged(
    String? imagePath,
    Emitter<AddReminderState> emit,
  ) async {
    emit(state.copyWith(imagePath: imagePath));
  }

  Future<void> pickImageFromGallery(Emitter<AddReminderState> emit) async {
    final XFile? pickedImage = await imagePickerService.pickFromGallery();
    if (pickedImage != null) {
      emit(state.copyWith(imagePath: pickedImage.path));
    }
  }

  Future<void> saveReminder({
    required Emitter<AddReminderState> emit,
    required String title,
    DateTime? dateTime,
    String? note,
    String? imagePath,
  }) async {
    emit(state.copyWith(actionStatus: ActionStatus.idle()));

    final reminder = ReminderEntity(
      id: 0,
      title: title,
      dateTime: dateTime ?? DateTime.now(),
      note: note,
      imagePath: imagePath,
    );

    final result = await createRemindersUsecase(reminder).run();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.failure(message: failure.message),
          ),
        );
      },
      (reminderId) async {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.success(
              message: 'Reminder created successfully',
            ),
          ),
        );

        androidAlarmService.createNewAlarm(
          id: reminderId,
          time: reminder.dateTime,
          callback: alarmCallback,
        );
      },
    );
  }

  Future<void> updateReminder({
    required Emitter<AddReminderState> emit,
    required int id,
    required String title,
    DateTime? dateTime,
    String? note,
    String? imagePath,
  }) async {
    emit(state.copyWith(actionStatus: ActionStatus.loading()));

    final reminder = ReminderEntity(
      id: id,
      title: title,
      dateTime: dateTime ?? DateTime.now(),
      note: note,
      imagePath: imagePath,
    );

    final result = await updateRemindersUsecase(reminder).run();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.failure(message: failure.message),
          ),
        );
      },
      (updatedCount) {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.success(
              message: 'Reminder updated successfully',
            ),
          ),
        );
        androidAlarmService.cancelAlarm(id);
        androidAlarmService.createNewAlarm(
          id: id,
          time: reminder.dateTime,
          callback: alarmCallback,
        );
      },
    );
  }
}
