import 'package:flutter/material.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/widget/custom_error_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: Center(
        child: CustomErrorWidget(message: 'Profile Page is under development.'),
      ),
    );
  }
}
