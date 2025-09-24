import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/settings/blocs/settings_service/settings_service.dart';
import '../../features/settings/blocs/switching_cubit/switching_cubit.dart';
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
  getIt.registerLazySingleton<SwitchingCubit>(() => SwitchingCubit());
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SettingsService>(SettingsService(prefs));
}
