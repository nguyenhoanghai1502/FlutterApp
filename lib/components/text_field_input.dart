import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';

class TextFieldInput extends StatelessWidget {
  bool Enable = true;
  var hinText;
  Color bgColor = Colors.transparent;
  TextFieldInput({this.hinText, this.Enable = true, this.bgColor=Colors.transparent});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius:BorderRadius.circular(borderRadius)),
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: TextField(
            enabled: Enable,
            cursorColor: blackColor,
            decoration: InputDecoration(
              
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: blackColor),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              hintText: hinText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
            )));
  }
}
