import 'package:flutter/material.dart';

class RadioButtonGroup extends StatefulWidget {
  final String groupLabel;
  final List<String> options;
  final Function(String) callbackFunction;
  final double borderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  final TextStyle? textStyle;
  final Color? activeColor;

  const RadioButtonGroup({
    Key? key,
    required this.groupLabel,
    required this.options,
    required this.callbackFunction,
    this.borderRadius = 10.0,
    this.enabledBorderColor = Colors.blue,
    this.enabledBorderWidth = 2.0,
    this.focusedBorderColor = Colors.green,
    this.focusedBorderWidth = 2.0,
    this.textStyle,
    this.activeColor,
  }) : super(key: key);

  @override
  _RadioButtonGroupState createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButtonGroup> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: widget.enabledBorderColor,
            width: widget.enabledBorderWidth,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.groupLabel,
                style: widget.textStyle ?? TextStyle(fontSize: 16),
              ),
              ...widget.options.map((option) {
                return ListTile(
                  title: Text(option, style: widget.textStyle),
                  leading: Radio<String>(
                    value: option,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                      widget.callbackFunction(value!);
                    },
                    activeColor: widget.activeColor ?? Theme.of(context).primaryColor,
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}