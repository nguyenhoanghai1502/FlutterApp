import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';

class LabelText extends StatelessWidget {
  var name;
  var selector="";
  var activeColor = linkColor;
  LabelText({this.name, this.selector=""});
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(name,
          style: TextStyle(
              fontFamily: textFont,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              color: blackColor)),
      Text(selector,
          style: TextStyle(
            fontFamily: textFont,
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: activeColor,
          ))
    ]);
  }
}
