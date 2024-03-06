import 'package:flutter/material.dart';
import 'package:testapp/core/build_form_data/form_data.dart';
import 'package:testapp/core/build_form_data/models/button_model.dart';
import 'package:testapp/core/utils/app_extensions.dart';
import 'package:testapp/core/widgets/custom_button.dart';

class CustomButtonFormData extends FormDataWidget {
  final ButtonModel buttonDetails;
  PageController controller;
  CustomButtonFormData(this.buttonDetails,this.controller);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: CustomButton(
        onPressed: () {
          if (buttonDetails.link != null) {
            context.push(buttonDetails.link!);
          } else {
            if(buttonDetails.name == ' عودة'){
               controller.previousPage(
            duration:const  Duration(milliseconds: 300), // Animation duration
            curve: Curves.ease, // Animation curve
          );
            }else{
            controller.nextPage(
            duration:const  Duration(milliseconds: 300), // Animation duration
            curve: Curves.ease, // Animation curve
          );
            }
         
          }
        },
        title: buttonDetails.name!,
      ),
    );
  }
}
