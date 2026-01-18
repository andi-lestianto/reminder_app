import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/presentation/states/action_status.dart';
import 'package:reminder_app/core/services/image_picker_service.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_enum.dart';
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
  AddReminderBloc(
    this.imagePickerService,
    this.createRemindersUsecase,
    this.updateRemindersUsecase,
  ) : super(AddReminderState.initial()) {
    on<AddReminderEvent>((event, emit) async {
      await event.when(
        started: () {},
        fillForm: (reminder) => fillForm(reminder, emit),
        dateTimeChanged: (dateTime) =>
            dateTimeChanged(dateTime, emit), // ignore for now
        titleChanged: (title) => titleChanged(title, emit),
        noteChanged: (note) => noteChanged(note, emit),
        imagePathChanged: (imagePath) => imagePathChanged(imagePath, emit),
        isRepeatEveryDayChanged: (isRepeatEveryDay) =>
            isRepeatEveryDayChanged(isRepeatEveryDay, emit),
        reminderTypeChanged: (reminderType) =>
            reminderTypeChanged(reminderType, emit),
        pickImageFromGallery: () => pickImageFromGallery(emit),
        saveReminder:
            (
              title,
              dateTime,
              note,
              imagePath,
              isRepeatEveryDay,
              reminderType,
            ) => saveReminder(
              emit: emit,
              title: title,
              dateTime: dateTime,
              note: note,
              imagePath: imagePath,
              isRepeatEveryDay: isRepeatEveryDay,
              reminderType: reminderType,
            ),
        updateReminder:
            (
              id,
              title,
              dateTime,
              note,
              imagePath,
              isRepeatEveryDay,
              reminderType,
            ) => updateReminder(
              emit: emit,
              id: id,
              title: title,
              dateTime: dateTime,
              note: note,
              imagePath: imagePath,
              isRepeatEveryDay: isRepeatEveryDay,
              reminderType: reminderType,
            ),
      );
    });
  }

  Future<void> fillForm(
    ReminderEntity? reminder,
    Emitter<AddReminderState> emit,
  ) async {
    if (reminder != null) {
      emit(
        state.copyWith(
          dateTime: reminder.dateTime,
          title: reminder.title,
          note: reminder.note,
          imagePath: reminder.imagePath,
          isRepeatEveryDay: reminder.isRepeatEveryDay,
          reminderType: reminder.reminderType,
        ),
      );
    }
  }

  Future<void> dateTimeChanged(
    DateTime dateTime,
    Emitter<AddReminderState> emit,
  ) async {
    emit(state.copyWith(dateTime: dateTime));
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

  Future<void> isRepeatEveryDayChanged(
    bool isRepeatEveryDay,
    Emitter<AddReminderState> emit,
  ) async {
    emit(state.copyWith(isRepeatEveryDay: isRepeatEveryDay));
  }

  Future<void> reminderTypeChanged(
    ReminderTypeEnum reminderType,
    Emitter<AddReminderState> emit,
  ) async {
    emit(state.copyWith(reminderType: reminderType));
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
    required bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,
  }) async {
    emit(state.copyWith(actionStatus: ActionStatus.idle()));

    final reminder = ReminderEntity(
      id: 0,
      title: title,
      dateTime: dateTime ?? DateTime.now(),
      note: note,
      isRepeatEveryDay: isRepeatEveryDay,
      reminderType: reminderType,
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
      (reminderId) {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.success(
              message: 'Reminder created successfully',
            ),
          ),
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
    required bool isRepeatEveryDay,
    required ReminderTypeEnum reminderType,
  }) async {
    emit(state.copyWith(actionStatus: ActionStatus.loading()));

    final reminder = ReminderEntity(
      id: id,
      title: title,
      dateTime: dateTime ?? DateTime.now(),
      note: note,
      isRepeatEveryDay: isRepeatEveryDay,
      reminderType: reminderType,
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
      },
    );
  }
}
