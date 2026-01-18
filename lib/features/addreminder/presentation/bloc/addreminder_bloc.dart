import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/services/image_picker_service.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/reminder_type_enum.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';

part 'addreminder_event.dart';
part 'addreminder_state.dart';
part 'addreminder_bloc.freezed.dart';

@injectable
class AddReminderBloc extends Bloc<AddReminderEvent, AddReminderState> {
  final ImagePickerService imagePickerService;
  AddReminderBloc(this.imagePickerService) : super(AddReminderState.initial()) {
    on<AddReminderEvent>((event, emit) async {
      await event.when(
        started: () {},
        fillForm: (reminder) => fillForm(reminder, emit),
        titleChanged: (title) => titleChanged(title, emit),
        noteChanged: (note) => noteChanged(note, emit),
        imagePathChanged: (imagePath) => imagePathChanged(imagePath, emit),
        isRepeatEveryDayChanged: (isRepeatEveryDay) =>
            isRepeatEveryDayChanged(isRepeatEveryDay, emit),
        reminderTypeChanged: (reminderType) =>
            reminderTypeChanged(reminderType, emit),
        pickImageFromGallery: () => pickImageFromGallery(emit),
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
}
