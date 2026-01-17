import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_enum.dart';
import 'package:reminder_app/gen/assets.gen.dart';

extension MainNavigationEnumExtension on MainNavigationEnum {
  String get icon {
    switch (this) {
      case MainNavigationEnum.reminder:
        return Assets.icons.clockThree.path;
      case MainNavigationEnum.addreminder:
        return Assets.icons.plus.path;
      case MainNavigationEnum.profile:
        return Assets.icons.user.path;
    }
  }
}
