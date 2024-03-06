import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/modules/dashboard/presentation/view/home_page.dart';
import 'package:testapp/modules/submit_form/presentation/views/bloc/step_bloc.dart';

import '../../modules/submit_form/presentation/views/form_view.dart';
import 'routes.dart';

class AppRouter {
  AppRouter();

  final navigatorKey = GlobalKey<NavigatorState>();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return _getPageRoute(const HomePage());
      case Routes.form:
        return _getPageRoute( BlocProvider(
          create: (context) => StepBloc()..add(InitializeSteps()),
          child: const FormView(),
        ));
    }
    return null;
  }

  PageRoute _getPageRoute(Widget child) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (context) => child,
      );
    } else {
      return CustomPageRouter(child);
    }
  }
}

class CustomPageRouter<T> extends PageRouteBuilder<T> {
  final Widget child;

  CustomPageRouter(this.child)
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionDuration: const Duration(milliseconds: 300),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              const begin = 0.0;
              const end = 1.0;
              var tween = Tween<double>(begin: begin, end: end);
              return FadeTransition(
                opacity: animation.drive(tween),
                child: child,
              );
            });
}
