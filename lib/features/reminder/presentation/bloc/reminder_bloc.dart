import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/presentation/states/action_status.dart';
import 'package:reminder_app/core/presentation/states/section_state.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/domain/usecase/delete_reminders_usecase.dart';
import 'package:reminder_app/features/reminder/domain/usecase/get_reminders_usecase.dart';
import 'package:reminder_app/features/reminder/domain/usecase/get_upcoming_reminder_usecase.dart';
import 'package:reminder_app/features/reminder/domain/usecase/get_week_dates_usecase.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

@injectable
class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final GetWeekDatesUsecase getWeekDatesUsecase;
  final GetRemindersUsecase getRemindersUsecase;
  final DeleteRemindersUsecase deleteRemindersUsecase;
  final GetUpcomingReminderUsecase getUpcomingReminderUsecase;
  ReminderBloc(
    this.getWeekDatesUsecase,
    this.getRemindersUsecase,
    this.getUpcomingReminderUsecase,
    this.deleteRemindersUsecase,
  ) : super(ReminderState.initial()) {
    on<ReminderEvent>((event, emit) async {
      await event.when(
        fetchAllData: () => fetchAllData(),
        fetchReminders: () => fetchReminders(emit: emit),
        fetchWeekDates: () => fetchWeekDates(emit: emit),
        deleteReminder: (id) => deleteReminder(emit: emit, id: id),
      );
    });
  }

  Future<void> fetchAllData() async {
    add(ReminderEvent.fetchWeekDates());
    add(ReminderEvent.fetchReminders());
  }

  Future<void> fetchWeekDates({required Emitter<ReminderState> emit}) async {
    emit(state.copyWith(weekDatesState: const SectionState.loading()));

    await Future.delayed(Duration(seconds: 1));
    final weekDates = getWeekDatesUsecase.call();

    weekDates.fold(
      (failure) {
        emit(
          state.copyWith(
            weekDatesState: SectionState.error('Failed to load week dates'),
          ),
        );
      },
      (weekDates) {
        emit(
          state.copyWith(weekDatesState: SectionState.loaded(data: weekDates)),
        );
      },
    );
  }

  Future<void> fetchReminders({required Emitter<ReminderState> emit}) async {
    emit(state.copyWith(remindersState: const SectionState.loading()));

    final remindersResult = await getRemindersUsecase.call().run();

    remindersResult.fold(
      (failure) {
        emit(
          state.copyWith(
            remindersState: SectionState.error('Failed to load reminders'),
          ),
        );
      },
      (reminders) {
        final upComingReminder = getUpcomingReminderUsecase.call(reminders);

        emit(
          state.copyWith(
            remindersState: SectionState.loaded(data: reminders),
            upComingReminder: upComingReminder,
          ),
        );
      },
    );
  }

  Future<void> deleteReminder({
    required Emitter<ReminderState> emit,
    required int id,
  }) async {
    emit(state.copyWith(actionStatus: ActionStatus.loading()));

    final result = await deleteRemindersUsecase(id).run();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.failure(message: failure.message),
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            actionStatus: ActionStatus.success(
              message: 'Reminder deleted successfully',
            ),
          ),
        );
        add(ReminderEvent.fetchReminders());
      },
    );
  }
}
