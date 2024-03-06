import 'package:flutter/widgets.dart';
import 'package:testapp/core/build_form_data/form_data.dart';

class NoWidgetFormData extends FormDataWidget {


  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
