import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_mental_health/Screens/Authentication/components/SignUp/sign_up_with_phone.dart';
import 'package:flutter_mental_health/components/label_text.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/components/text_field_input.dart';
import 'package:flutter_mental_health/constants.dart';

class SinUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 240,                  
                  width: double.infinity,
                  child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(color: buttonColor),
                    )                   
                  ],),
                ),
              ),
              TextFieldInput(hinText: "Email"),
              TextFieldInput(hinText: "Password"),
              TextFieldInput(hinText: "Verify Password"),
              RoundedButton(
                  name: "Sign up",
                  marginVertical: 10,
                  press: () => {}),
              RoundedButton(
                  name: "Sign up with phone number",
                  marginVertical: 10,
                  press: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpWithPhone();
                        }))
                      }),
              SizedBox(
                height: 50,
                width: double.infinity,
              ),
              LabelText(
                name: "Already have account ?",
                selector: " Log in",
              )
            ],
          ),
        ),
      ),
    );
  }
}
