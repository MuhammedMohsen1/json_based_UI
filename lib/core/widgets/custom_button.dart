import 'package:flutter/material.dart';
import 'package:testapp/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
      ),
      child: Text(
        title,
        style: Styles.style12,
      ),
    );
  }
}
