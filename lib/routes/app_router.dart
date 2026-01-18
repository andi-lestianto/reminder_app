import 'package:go_router/go_router.dart';
import 'package:reminder_app/features/addreminder/presentation/pages/add_reminder_page.dart';
import 'package:reminder_app/features/image_details/presentation/pages/image_details_page.dart';
import 'package:reminder_app/features/mainscreen/presentation/pages/main_screen.dart';
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
      builder: (context, state) => const AddReminderPage(),
    ),
    GoRoute(
      name: RouteNames.imageDetails,
      path: RouteNames.imageDetails,
      builder: (context, state) {
        final imageUrl = state.uri.queryParameters['imagePath'] ?? '';
        return ImageDetailsPage(imagePath: imageUrl);
      },
    ),
  ],
);
