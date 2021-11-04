import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';

class RoundedButton extends StatelessWidget {
  var name;
  double marginVertical;
  double marginHozirontal;
   Color bgColor = buttonColor;
  final Function press;
  RoundedButton({Key? key, this.name, this.marginHozirontal=0, this.marginVertical=0, this.bgColor=buttonColor, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: this.marginVertical, horizontal: this.marginHozirontal),
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(bgColor),
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
