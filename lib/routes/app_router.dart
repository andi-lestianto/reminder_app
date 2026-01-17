import 'package:go_router/go_router.dart';
import 'package:reminder_app/features/mainscreen/presentation/pages/main_screen.dart';
import 'package:reminder_app/routes/route_names.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteNames.mainScreen,
  routes: [
    GoRoute(
      path: RouteNames.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
