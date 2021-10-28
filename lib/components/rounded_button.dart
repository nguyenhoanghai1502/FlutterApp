import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';

class RoundedButton extends StatelessWidget {
  var name;
  final Function press;
  RoundedButton({Key? key, this.name, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide.none))),
        child: Text(
          name,
          style: TextStyle(
              fontFamily: textFont,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              color: textColor),
        ),
        onPressed: () {
          press();
        },
      ),
    );
  }
}
