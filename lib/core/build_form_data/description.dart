import 'package:flutter/widgets.dart';
import 'package:testapp/core/build_form_data/form_data.dart';
import 'package:testapp/core/build_form_data/models/description_model.dart';
import 'package:testapp/core/utils/styles.dart';

class DescriptionFormDataWidget extends FormDataWidget {
  final Description description;
  DescriptionFormDataWidget(this.description);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
          description.stepTitle!,
          style: Styles.style24,
        ),
        const SizedBox(
          height: 16,
        ),
           Text(
          description.label!,
          style: Styles.style20,
        ),
          const SizedBox(
          height: 8,
        ),
           Text(
          description.description!,
          style: Styles.style14,
        ),
        ],
      ),
    );
  }
}
