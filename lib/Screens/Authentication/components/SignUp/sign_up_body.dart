import 'package:flutter/material.dart';
import 'package:flutter_mental_health/Screens/Authentication/components/SignUp/sign_up_with_phone.dart';
import 'package:flutter_mental_health/Screens/Authentication/components/have_account_or_not.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/components/text_field_input.dart';
import 'package:flutter_mental_health/constants.dart';

class SinUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedButton(
                name: "Sign up with phone number",
                press: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpWithPhone();
                      }))
                    }),
            RoundedButton(name: "Sign up with email", press: () => {}),
            SizedBox(
              height: 108,
              width: double.infinity,
            ),
            HaveAccountOrNot(
              name: "Already have account ?",
              selector: " Log in",
            )
          ],
        ),
      ),
    );
  }
}
