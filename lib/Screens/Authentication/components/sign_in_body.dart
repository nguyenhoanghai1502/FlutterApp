import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';
import '../../../components/rounded_button.dart';
import '../../../components/text_field_input.dart';
import 'have_account_or_not.dart';

class SinInBody extends StatelessWidget {
  const SinInBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 108,
              decoration: BoxDecoration(color: buttonColor),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            ),
            TextFieldInput(hinText: "Email"),
            TextFieldInput(hinText: "Password"),
            RoundedButton(name: "Login",press: ()=>{}),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Text("Forgot password?",
                style: TextStyle(
                    fontFamily: textFont,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600,
                    color: textColor)),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            RoundedButton(name: "Log in with phone number",press: ()=>{}),
            RoundedButton(name: "Log in with Facebook",press: ()=>{}),
            RoundedButton(name: "Log in with Google",press: ()=>{}),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: HaveAccountOrNot(
                name: "Don’t have account ?",
                selector: "Sign up",
              ),
            )
          ],
        ),
      ),
    );
  }
}


