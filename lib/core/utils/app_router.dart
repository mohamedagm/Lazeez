import 'package:go_router/go_router.dart';
import 'package:lazeez/features/onBoarding/presentation/views/onboarding_view.dart';
import 'package:lazeez/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: '/onboardingView',
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
