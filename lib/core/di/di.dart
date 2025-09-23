import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../blocs/loading_cubit/loading_cubit.dart';
import '../di/di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  getIt.init();

  getIt.registerLazySingleton<LoadingCubit>(() => LoadingCubit());
}
