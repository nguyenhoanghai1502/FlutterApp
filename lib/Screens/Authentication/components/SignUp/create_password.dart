import 'package:flutter/material.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/components/text_field_input.dart';
import 'package:flutter_mental_health/constants.dart';

import '../tabcontrol.dart';
import 'sign_up_with_phone.dart';

class CreatePassword extends StatefulWidget {
  String PhoneNum = '';
  CreatePassword({this.PhoneNum = ''});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CreatePasswordState();
  }
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppBackgroundColor,
        title: (Title(
            color: AppBackgroundColor,
            child: Text(
              "Create Password",
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
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
                width: double.infinity,
              ),
              TextFieldInput(
                hinText: '${widget.PhoneNum}',
                Enable: false,
                bgColor: buttonColor,
              ),
              TextFieldInput(hinText: "Password"),
              TextFieldInput(hinText: "Verify Password"),
              RoundedButton(name: "Next", marginVertical: 10, press: () => {}),
              RoundedButton(
                  name: "Cancel",
                  marginVertical: 10,
                  bgColor: Colors.white,
                  press: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TabControl();
                        }))
                      }),
              SizedBox(
                height: 50,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
