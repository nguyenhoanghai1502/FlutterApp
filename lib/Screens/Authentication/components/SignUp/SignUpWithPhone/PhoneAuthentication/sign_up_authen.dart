import 'package:flutter/material.dart';
import 'package:flutter_mental_health/Screens/Authentication/components/SignUp/SignUpWithPhone/PhoneAuthentication/sign_up_box.dart';
import 'package:flutter_mental_health/components/countdown_time.dart';
import 'package:flutter_mental_health/components/label_text.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/components/text_field_input.dart';
import 'package:flutter_mental_health/constants.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../create_password.dart';

class SignUpAuthenticate extends StatelessWidget {
  String PhoneNum = "";
  SignUpAuthenticate({this.PhoneNum = " "});
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppBackgroundColor,
        title: (Title(
            color: AppBackgroundColor,
            child: Text(
              "Sign up with phone number",
              style: TextStyle(
                  color: blackColor,
                  fontFamily: textFont,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ))),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: blackColor,
            onPressed: () {
              Navigator.pop(context, false);
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Center(
                child: Text("We sent you a code"),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Center(
                child: Text(
                  this.PhoneNum,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              SignUpBoxes(),
              RoundedButton(
                  marginHozirontal: 55.0,
                  marginVertical: 30.0,
                  name: "Next",
                  press: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CreatePassword(PhoneNum: PhoneNum);
                        }))
                      }),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [LabelText(name: "Didn't receive the OTP? "),CountDownText()])),
              Text("Resend code",
                  style: TextStyle(
                    fontFamily: textFont,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w700,
                    color: linkColor,
                    decoration: TextDecoration.underline,
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
