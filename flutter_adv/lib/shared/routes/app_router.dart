import 'package:flutter/material.dart';
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
          builder: (_) => const SizedBox(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const SizedBox(),
          // BlocProvider(
          //   create: (context) => getIt<LoginCubit>(),
          //   child: const SizedBox(),
          // ),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const SizedBox(),
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

