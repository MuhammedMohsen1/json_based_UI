import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testapp/core/build_form_data/form_data.dart';
import 'package:testapp/core/build_form_data/models/select_model.dart';
import 'package:testapp/core/utils/styles.dart';

import 'widgets/select_drop_down_widget.dart';

class DropDownSelectFormDataWidget extends FormDataWidget {
  final SelectModel selectModel;
  DropDownSelectFormDataWidget(this.selectModel);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
         const SizedBox(
        height: 16,
      ),
        Text(
        selectModel.label,
        style: Styles.style14,
      ),
      const SizedBox(
        height: 16,
      ),
      SelectDropDownWidget(chooseList: const [
  'القاهرة',
  'الجيزة',
  'الإسكندرية',
  'الدقهلية',
  'البحر الأحمر',
  'الشرقية',
  'الغربية',
  'الفيوم',
  'المنوفية',
  'المنيا',
  'القليوبية',
  'الوادي الجديد',
  'أسوان',
  'أسيوط',
  'بني سويف',
  'بورسعيد',
  'جنوب سيناء',
  'دمياط',
  'سوهاج',
  'شمال سيناء',
  'قنا',
  'كفر الشيخ',
  'مطروح',
  'الأقصر',
  'البحيرة',
  'السويس',
],hint: 'اختر',onTap: (p0) {
      },
      title: '',
      ),
       const SizedBox(
        height: 16,
      ),
      ],
    );
  }
}
