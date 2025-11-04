part of 'router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        final cacheHelper = sl<CacheHelper>()
          ..getSessionToken()
          ..getUserId();
        if ((Cache.instance.sessionToken == null ||
                Cache.instance.userId == null) &&
            !cacheHelper.isFirstTime()) {
          return LoginScreen.path;
        }
        if (state.extra == 'home') return HomeScreen.path;

        return null;
      },
      builder: (_, __) {
        final cacheHelper = sl<CacheHelper>()
          ..getSessionToken()
          ..getUserId();
        if (cacheHelper.isFirstTime()) {
          return const OnboadringScreen();
        }
        return const SplashScreen();
      },
    ),
    GoRoute(path: LoginScreen.path, builder: (_, __) => const LoginScreen()),
    ShellRoute(
      builder: (context, state, child) {
        return DashboardScreen(state: state, child: child);
      },
      routes: [
        GoRoute(path: HomeScreen.path, builder: (_, __) => const HomeScreen()),
      ],
    ),
  ],
);
