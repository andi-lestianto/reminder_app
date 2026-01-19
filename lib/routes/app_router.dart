import 'package:go_router/go_router.dart';
import 'package:reminder_app/features/addreminder/presentation/pages/add_reminder_page.dart';
import 'package:reminder_app/features/image_details/presentation/pages/image_details_page.dart';
import 'package:reminder_app/features/mainscreen/presentation/pages/main_screen.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/permission_denied/presentation/pages/permission_denied_page.dart';
import 'package:reminder_app/routes/route_names.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteNames.mainScreen,
  routes: [
    GoRoute(
      name: RouteNames.mainScreen,
      path: RouteNames.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      name: RouteNames.addReminder,
      path: RouteNames.addReminder,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        final date = data['date'] as DateTime;
        final reminder = data['reminder'] as ReminderEntity?;
        return AddReminderPage(reminder: reminder, selectedDate: date);
      },
    ),
    GoRoute(
      name: RouteNames.imageDetails,
      path: RouteNames.imageDetails,
      builder: (context, state) {
        final imageUrl = state.uri.queryParameters['imagePath'] ?? '';
        return ImageDetailsPage(imagePath: imageUrl);
      },
    ),

    GoRoute(
      path: RouteNames.permissionDenied,
      name: RouteNames.permissionDenied,
      builder: (context, state) => const PermissionDeniedPage(),
    ),
  ],
);
