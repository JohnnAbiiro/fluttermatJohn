import 'package:flutter/material.dart';

class CheckboxButton extends StatefulWidget {
  final String labelText;
  final bool initialValue;
  final ValueChanged<bool?> onChanged;
  final TextStyle? labelStyle;
  final Color? activeColor;
  final Color? checkColor;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  CheckboxButton({
    super.key,
    required this.labelText,
    required this.initialValue,
    required this.onChanged,
    this.labelStyle,
    this.activeColor,
    this.checkColor,
    this.padding = const EdgeInsets.all(20.0),
    this.borderRadius = 10.0,
    this.borderColor = Colors.blue,
    this.borderWidth = 2.0,
  });

  @override
  _CheckboxButtonState createState() => _CheckboxButtonState();
}

class _CheckboxButtonState extends State<CheckboxButton> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: InkWell(
        onTap: () {
          setState(() {
            _isChecked = !_isChecked;
          });
          widget.onChanged(_isChecked);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(color: widget.borderColor, width: widget.borderWidth),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                    widget.onChanged(value);
                  },
                  activeColor: widget.activeColor,
                  checkColor: widget.checkColor,
                ),
                SizedBox(width: 8.0),
                Text(
                  widget.labelText,
                  style: widget.labelStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}