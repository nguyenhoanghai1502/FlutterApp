
import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';

class TextFieldInput extends StatelessWidget {
  var hinText;
  TextFieldInput({this.hinText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: TextField(
        cursorColor: textColor,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textColor),
                borderRadius: BorderRadius.circular(borderRadius),
                ),
            hintText: hinText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius)),))
    );
  }
}
