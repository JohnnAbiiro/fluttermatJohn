import 'package:flutter/material.dart';

class DropdownBuilderMethod extends StatelessWidget {
  final String labelText;
  final String hintText;
  final List<String> items;
  final String? selectedValue;
  final Function(String?) callbackFunction;
  final bool autofocus;
  final TextAlign textAlign;
  final double borderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final Color focusedBorderColor;
  final double focusedBorderWidth;

  DropdownBuilderMethod({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.items,
    required this.selectedValue,
    required this.callbackFunction,
    this.autofocus = false,
    this.textAlign = TextAlign.start,
    this.borderRadius = 10.0,
    this.enabledBorderColor = Colors.blue,
    this.enabledBorderWidth = 2.0,
    this.focusedBorderColor = Colors.green,
    this.focusedBorderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        color: Colors.white,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: enabledBorderColor, width: enabledBorderWidth),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: enabledBorderColor, width: enabledBorderWidth),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: focusedBorderColor, width: focusedBorderWidth),
            ),
          ),
          value: selectedValue,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: callbackFunction,
          autofocus: autofocus,
        ),
      ),
    );
  }
}