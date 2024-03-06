import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_extensions.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.topLeft,
            colors: [
              Colors.blue.withOpacity(0.2),
              Colors.blue.withOpacity(0.1),
              Colors.blue.withOpacity(0.01),
            ]),
      ),
      child: child,
    );
  }
}
