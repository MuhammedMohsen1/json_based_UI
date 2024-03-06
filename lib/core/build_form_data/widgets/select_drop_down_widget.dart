import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class SelectDropDownWidget extends StatefulWidget {
  const SelectDropDownWidget({
    super.key,
    required this.title,
    required this.hint,
    required this.chooseList,
    required this.onTap,
  });
  final String title;
  final String hint;
  final List<String> chooseList;
  final Function(String) onTap;
  @override
  State<SelectDropDownWidget> createState() => _SelectDropDownWidgetState();
}

class _SelectDropDownWidgetState extends State<SelectDropDownWidget> {
  // ignore: prefer_typing_uninitialized_variables
  var  value;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(14),
              
              isExpanded: true,
              value: value, // Default value
              onChanged: (String? newValue) {
                setState(() {
                  value = newValue;
                });
                widget.onTap(newValue!);
              },
              items: widget.chooseList
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Center(
                    child: Text(
                      value ,
                      textAlign: TextAlign.start,
                      style: Styles.style14
                    ),
                  ),
                );
              }).toList(),
              underline: const SizedBox.shrink(),
              alignment: Alignment.center,
              hint: Text(
                widget.hint,
                textAlign: TextAlign.start,
                style: Styles.style14
              ),
            ),
          ),
        ),
      ),
    );
  }
}
