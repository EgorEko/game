import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/alert/screens/alert_screen.dart';
import '../../features/game/screens/game_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/instruction/screens/instruction_screen.dart';
import '../../features/level/screens/level_screen.dart';
import '../../features/menu/screens/menu_screen.dart';
import '../../features/mode/screens/mode_screen.dart';
import '../../features/privacy/screens/privacy_policy_screen.dart';
import '../../features/settings/screens/settings_screen.dart';
import '../../features/terms/screens/terms_of_use_screen.dart';
import '../../features/welcome/screens/welcome_screen.dart';
import '../blocs/loading_cubit/cubit_listenable.dart';
import '../blocs/loading_cubit/loading_cubit.dart';
import '../di/di.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.welcome.path,
  refreshListenable: getIt<CubitListenable<LoadingState>>(),
  redirect: (BuildContext context, GoRouterState state) {
    final cubit = getIt<LoadingCubit>();
    final isSplash = state.uri.toString() == AppRoutes.welcome.path;

    if (cubit.state.isLoading!) {
      return isSplash ? null : AppRoutes.welcome.path;
    }

    if (isSplash) {
      return AppRoutes.home.path;
    }
    return null;
  },

  routes: [
    GoRoute(
      path: AppRoutes.welcome.path,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.home.path,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      },
    ),
    GoRoute(
      path: AppRoutes.privacy.path,
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: AppRoutes.terms.path,
      builder: (context, state) => const TermsOfUseScreen(),
    ),
    GoRoute(
      path: AppRoutes.settings.path,
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: AppRoutes.menu.path,
      builder: (context, state) => const MenuScreen(),
    ),
    GoRoute(
      path: AppRoutes.instruction.path,
      builder: (context, state) => const InstructionScreen(),
    ),
    GoRoute(
      path: AppRoutes.mode.path,
      builder: (context, state) => const ModeScreen(),
    ),
    GoRoute(
      path: AppRoutes.level.path,
      builder: (context, state) => const LevelScreen(),
    ),
    GoRoute(
      path: AppRoutes.game.path,
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: const GameScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
      },
    ),
    GoRoute(
      path: AppRoutes.alert.path,
      builder: (context, state) => const AlertScreen(),
    ),
  ],
);
