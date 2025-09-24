import 'package:flutter/material.dart';

import 'core/blocs/loading_cubit/cubit_listenable.dart';
import 'core/blocs/loading_cubit/loading_cubit.dart';
import 'core/di/di.dart';
import 'game_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  getIt<LoadingCubit>().startAnimation();

  getIt.registerLazySingleton<CubitListenable<LoadingState>>(
    () => CubitListenable(getIt<LoadingCubit>()),
  );

  runApp(const GameApp());
}
