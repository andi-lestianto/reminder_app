import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_enum.dart';

part 'mainscreen_state.dart';
part 'mainscreen_cubit.freezed.dart';

@injectable
class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(MainScreenState());

  Future<void> selectNavItem(MainNavigationEnum navItem) async {
    emit(state.copyWith(selectedNavItem: navItem));
  }
}
