
import 'package:flutter/material.dart';
class buildermethod extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController emailText;
  final Function(String) callbackFunction;
  final bool autofocus;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final InputDecoration? decoration;
  final TextStyle? style;
  final TextAlign textAlign;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool enabled;
  final bool readOnly;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final Function()? onEditingComplete;
  final Function(String)? onFieldChanged;
  final Function(String?)? onSaved;
  final FormFieldValidator<String>? validator;
  final double borderRadius;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  buildermethod({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.emailText,
    required this.callbackFunction,
    this.autofocus = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.none,
    this.decoration,
    this.style,
    this.textAlign = TextAlign.start,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.enabled = true,
    this.readOnly = false,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.onEditingComplete,
    this.onFieldChanged,
    this.onSaved,
    this.validator,
    this.borderRadius = 10.0,
    this.enabledBorderColor = Colors.blue,
    this.enabledBorderWidth = 2.0,
    this.focusedBorderColor = Colors.green,
    this.focusedBorderWidth = 2.0,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20.0),
      child: Container(
        color: Colors.white,
        child:TextFormField(
          decoration: decoration ??
              InputDecoration(
                labelText: labelText,
                hintText:  hintText,
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
          controller: emailText,
          onChanged: callbackFunction,
          autofocus: autofocus,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          textAlign: textAlign,
          autocorrect: autocorrect,
          enableSuggestions: enableSuggestions,
          enabled: enabled,
          readOnly: readOnly,
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          onEditingComplete: onEditingComplete,
          onSaved: onSaved,
          validator: validator,
        ),
      ),
    );
  }

}
