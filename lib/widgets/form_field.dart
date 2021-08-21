import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final String? errorMessage;
  final TextInputType inputType;

  const TextInput(
      {Key? key,
      this.hintText,
      this.prefixIcon,
      this.errorMessage,
      required this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
      textAlignVertical: TextAlignVertical.center,
      keyboardType: this.inputType,
      decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 11, height: 0),
          errorMaxLines: 2,
          helperText: this.errorMessage != null ? "" : null,
          helperMaxLines: 2,
          /* errorText: this.errorMessage, */
          hintText: this.hintText != null ? this.hintText : '',
          contentPadding: EdgeInsets.only(right: 20),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 10.0),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(this.prefixIcon != null ? this.prefixIcon : null,
                    color: Colors.grey),
              ))),
    );
  }
}
