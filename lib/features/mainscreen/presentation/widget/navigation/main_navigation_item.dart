import 'package:flutter/material.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_enum.dart';
import 'package:reminder_app/features/profile/presentation/pages/profile_page.dart';
import 'package:reminder_app/features/reminder/presentation/pages/reminder_page.dart';

class MainNavigationItem {
  final MainNavigationEnum type;
  final Widget page;

  MainNavigationItem({required this.type, required this.page});

  static List<MainNavigationItem> get items => [
    MainNavigationItem(
      type: MainNavigationEnum.reminder,
      page: const ReminderPage(),
    ),
    MainNavigationItem(
      type: MainNavigationEnum.profile,
      page: const ProfilePage(),
    ),
  ];
}
