import 'package:flutter/material.dart';
import 'package:testapp/core/build_form_data/form_data.dart';
import 'package:testapp/core/build_form_data/models/feed_back_model.dart';
import 'package:testapp/core/utils/styles.dart';

class FeedBackFormDataWidget extends FormDataWidget {
  final FeedbackModel feedbackModel;
  FeedBackFormDataWidget(this.feedbackModel);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       const  SizedBox(
          height: 60,
        ),
        Text(
        feedbackModel.headLabel?? '',
        style: Styles.style24,
      ),
      const SizedBox(
        height: 16,
      ),
       ...List.generate(feedbackModel.items!.length, (index) => Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
         child: ListTile(
           trailing: Text(feedbackModel.items![index],style: Styles.style18,),
           leading: Text('قيمة وهمية',style: Styles.style16,),
         ),
       ))
      ],
    );
  }
}
