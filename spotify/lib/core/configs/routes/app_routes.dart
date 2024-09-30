import 'package:go_router/go_router.dart';
import 'package:spotify/core/configs/routes/route_names.dart';
import 'package:spotify/presentation/pages/intro/pages/get_started.dart';
import 'package:spotify/presentation/pages/splash/splash_screen.dart';
import 'package:spotify/presentation/pages/theme_selection/theme_selection_ui.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: RouteNames.splash,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: RouteNames.getStarted,
    builder: (context, state) => const GetStartedScreen(),
  ),
  GoRoute(
    path: RouteNames.themeSelection,
    builder: (context, state) => const ThemeSelectionUi(),
  )
]);
