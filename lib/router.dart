import 'package:chat_flutter/screens/auth/signup/signup_screen_else.dart';
import 'package:chat_flutter/screens/onboarding/start_onbording_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: StartOnboardingScreen.routeUrl,
      routes: [
        GoRoute(
          name: StartOnboardingScreen.routeName,
          path: StartOnboardingScreen.routeUrl,
          builder: (context, state) => const StartOnboardingScreen(),
        ),
        GoRoute(
          name: SignUpAuthScreen.routeName,
          path: SignUpAuthScreen.routeUrl,
          builder: (context, state) => const SignUpAuthScreen(),
        ),
      ],
    );
  },
);
