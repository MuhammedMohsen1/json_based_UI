import 'package:flutter/material.dart';
import 'package:testapp/core/build_form_data/description.dart';
import 'package:testapp/core/build_form_data/drop_down_select.dart';
import 'package:testapp/core/build_form_data/models/button_model.dart';
import 'package:testapp/core/build_form_data/models/description_model.dart';
import 'package:testapp/core/build_form_data/models/feed_back_model.dart';
import 'package:testapp/core/build_form_data/models/select_model.dart';
import '../../modules/submit_form/data/models/form/form_data.dart';
import '../build_form_data/button.dart';
import '../build_form_data/feed_back.dart';

import '../build_form_data/no_widget.dart';

Widget buildFormData(BuildContext context, FormData data,PageController controller) {
  switch (data.type) {
    case 'description':
      return DescriptionFormDataWidget(Description.fromJson(data.toMap()))
          .build(context);
    case 'select':
      return DropDownSelectFormDataWidget(SelectModel.fromJson(data.toMap()))
          .build(context);

    case 'button':
      return CustomButtonFormData(ButtonModel.fromJson(data.toMap()),controller)
          .build(context);

    case 'feedback':
      return FeedBackFormDataWidget(FeedbackModel.fromJson(data.toMap()))
          .build(context);


    default:
      return NoWidgetFormData().build(context);
  
  }
}

Widget buildFormDataScreen(List<FormData> allData,BuildContext context,PageController controller) {
  return ListView.separated(
      itemBuilder: (context, index) {
        return buildFormData(context, allData[index],controller);
      },
      separatorBuilder: (context, index) =>  const SizedBox(height: 8,),
      itemCount: allData.length);
}
