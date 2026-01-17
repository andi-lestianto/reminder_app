import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/presentation/states/section_state.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
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
  final GetUpcomingReminderUsecase getUpcomingReminderUsecase;
  ReminderBloc(
    this.getWeekDatesUsecase,
    this.getRemindersUsecase,
    this.getUpcomingReminderUsecase,
  ) : super(ReminderState.initial()) {
    on<ReminderEvent>((event, emit) async {
      await event.when(
        fetchAllData: () => fetchAllData(),
        fetchReminders: () => fetchReminders(emit),
        fetchWeekDates: () => fetchWeekDates(emit),
      );
    });
  }

  Future<void> fetchAllData() async {
    add(ReminderEvent.fetchWeekDates());
    add(ReminderEvent.fetchReminders());
  }

  Future<void> fetchWeekDates(Emitter<ReminderState> emit) async {
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

  Future<void> fetchReminders(Emitter<ReminderState> emit) async {
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
}
