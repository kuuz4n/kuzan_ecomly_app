part of 'injection_container.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final prefs = SharedPreferences.getInstance();

  sl
    ..registerSingleton(() => CacheHelper(sl()))
    ..registerLazySingleton(() => prefs);
}
