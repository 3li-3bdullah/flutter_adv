import 'package:flutter/material.dart';
import 'package:flutter_adv/modules/home/view/home_screen.dart';
import 'package:flutter_adv/modules/login/view/login_screen.dart';
import 'package:flutter_adv/modules/onboarding/onboarding_screen.dart';
import 'package:flutter_adv/shared/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/login/logic/cubit/login_cubit.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

