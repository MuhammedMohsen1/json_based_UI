import 'package:flutter/material.dart';
import 'package:testapp/core/utils/styles.dart';

class ErrorScreen  extends StatelessWidget {
  const ErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'حدث خطأ يرجة المحاولة لاحقاً',
      style: Styles.style14,
    ));
  }
}
