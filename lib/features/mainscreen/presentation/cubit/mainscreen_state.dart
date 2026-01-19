part of 'mainscreen_cubit.dart';

@freezed
abstract class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(true) bool permissionGranted,
    @Default(MainNavigationEnum.reminder) MainNavigationEnum selectedNavItem,
  }) = _MainScreenState;
}
