// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:reminder_app/core/database/app_database.dart' as _i491;
import 'package:reminder_app/core/services/image_picker_service.dart' as _i430;
import 'package:reminder_app/features/addreminder/presentation/bloc/addreminder_bloc.dart'
    as _i558;
import 'package:reminder_app/features/mainscreen/presentation/cubit/mainscreen_cubit.dart'
    as _i1013;
import 'package:reminder_app/features/reminder/data/datasource/local/reminder_local_datasource.dart'
    as _i480;
import 'package:reminder_app/features/reminder/data/repository/reminder_repository_impl.dart'
    as _i470;
import 'package:reminder_app/features/reminder/domain/repository/reminder_repository.dart'
    as _i418;
import 'package:reminder_app/features/reminder/domain/usecase/create_reminders_usecase.dart'
    as _i655;
import 'package:reminder_app/features/reminder/domain/usecase/delete_reminders_usecase.dart'
    as _i429;
import 'package:reminder_app/features/reminder/domain/usecase/get_reminders_usecase.dart'
    as _i828;
import 'package:reminder_app/features/reminder/domain/usecase/get_upcoming_reminder_usecase.dart'
    as _i547;
import 'package:reminder_app/features/reminder/domain/usecase/get_week_dates_usecase.dart'
    as _i664;
import 'package:reminder_app/features/reminder/domain/usecase/update_reminders_usecase.dart'
    as _i867;
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart'
    as _i437;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i1013.MainScreenCubit>(() => _i1013.MainScreenCubit());
    gh.lazySingleton<_i491.AppDatabase>(() => _i491.AppDatabase());
    gh.lazySingleton<_i430.ImagePickerService>(
      () => _i430.ImagePickerService(),
    );
    gh.lazySingleton<_i547.GetUpcomingReminderUsecase>(
      () => _i547.GetUpcomingReminderUsecase(),
    );
    gh.lazySingleton<_i664.GetWeekDatesUsecase>(
      () => _i664.GetWeekDatesUsecase(),
    );
    gh.lazySingleton<_i480.ReminderLocalDatasource>(
      () => _i480.ReminderLocalDatasourceImpl(gh<_i491.AppDatabase>()),
    );
    gh.lazySingleton<_i418.ReminderRepository>(
      () => _i470.ReminderRepositoryImpl(gh<_i480.ReminderLocalDatasource>()),
    );
    gh.lazySingleton<_i655.CreateRemindersUsecase>(
      () => _i655.CreateRemindersUsecase(gh<_i418.ReminderRepository>()),
    );
    gh.lazySingleton<_i429.DeleteRemindersUsecase>(
      () => _i429.DeleteRemindersUsecase(gh<_i418.ReminderRepository>()),
    );
    gh.lazySingleton<_i828.GetRemindersUsecase>(
      () => _i828.GetRemindersUsecase(gh<_i418.ReminderRepository>()),
    );
    gh.lazySingleton<_i867.UpdateRemindersUsecase>(
      () => _i867.UpdateRemindersUsecase(gh<_i418.ReminderRepository>()),
    );
    gh.factory<_i558.AddReminderBloc>(
      () => _i558.AddReminderBloc(
        gh<_i430.ImagePickerService>(),
        gh<_i655.CreateRemindersUsecase>(),
        gh<_i867.UpdateRemindersUsecase>(),
      ),
    );
    gh.factory<_i437.ReminderBloc>(
      () => _i437.ReminderBloc(
        gh<_i664.GetWeekDatesUsecase>(),
        gh<_i828.GetRemindersUsecase>(),
        gh<_i547.GetUpcomingReminderUsecase>(),
        gh<_i429.DeleteRemindersUsecase>(),
      ),
    );
    return this;
  }
}
