import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mental_health/constants.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class SignUpBoxes extends StatefulWidget {
  @override
  _SignUpBoxesState createState() => _SignUpBoxesState();
}

class _SignUpBoxesState extends State<SignUpBoxes> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (PinCodeTextField(
      maxLength: 6,
      pinBoxHeight: 45,
      pinBoxWidth: 45,
      pinBoxColor: buttonColor,
      pinTextStyle:TextStyle(fontFamily: textFont,
      fontSize: 20
      ),
      pinBoxRadius: 5,
      controller:_textEditingController,
      defaultBorderColor: Colors.transparent,
      hasTextBorderColor: Colors.transparent,
    ));
  }
}
