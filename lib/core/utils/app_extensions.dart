import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/modules/submit_form/presentation/views/bloc/step_bloc.dart';

import '../injection/di_container.dart';
import '../routing/router.dart';


extension MediaQueryExtension on BuildContext {
  Size get _size => MediaQuery.of(this).size;

  double get width => _size.width;

  double get height => _size.height;
}
extension BlocExtension on BuildContext {
  StepBloc get stepBloc => BlocProvider.of<StepBloc>(this);


}

extension NavigationExtension on BuildContext {
  void push(String routeName, {Map<String, dynamic>? arg}) {
    sl<AppRouter>()
        .navigatorKey
        .currentState!
        .pushNamed(routeName, arguments: arg);
    // Navigator.of(this).pushNamed(routeName, arguments: arg);
    // Navigator.pushNamed(this, routeName,arguments: arg);
  }

  void pushAndRemove(String routeName) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }

  void popAndRemove(String routeName) {
    Navigator.popUntil(this, ModalRoute.withName(routeName));
  }

  void pop() {
    return Navigator.pop(this);
  }
}



extension Validation on String? {
  bool get isNullOrEmpty => (this != null && this!.isNotEmpty) ? false : true;
}

extension HeightExtension on num {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );
}

extension WidthExtension on num {
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}




extension TextLog on String {
  void logPrint() {
    log(this);
  }
}
