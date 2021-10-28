import 'package:flutter/material.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/components/text_field_input.dart';
import 'package:flutter_mental_health/constants.dart';

class SignUpAuthenticate extends StatelessWidget {
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
                  color: textColor,
                  fontFamily: textFont,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ))),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: textColor,
            onPressed: () {
              Navigator.pop(context, false);
            }),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldInput(hinText: "Email"),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              RoundedButton(
                  name: "Next",
                  press: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpAuthenticate();
                        }))
                      }),
            ],
          ),
        ),
      ),
    ));
  }
}
