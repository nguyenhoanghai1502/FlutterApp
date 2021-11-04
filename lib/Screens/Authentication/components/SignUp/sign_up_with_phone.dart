import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/components/text_field_input.dart';
import 'package:flutter_mental_health/constants.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'sign_up_authenticate/sign_up_authen.dart';

class SignUpWithPhone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpWithPhoneState();
  }
}

class _SignUpWithPhoneState extends State<SignUpWithPhone> {
  String _phone='';
  final phoneEdittingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String prefixText = "+84";
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
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: phoneEdittingController,
                onChanged: (text) {
                  this.setState(() {
                    _phone = text;
                  });
                },
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  hintText: " Phone",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: textColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  hintStyle: TextStyle(color: buttonColor),
                  prefixIcon: Icon(
                    Icons.circle_rounded,
                    color: buttonColor,
                  ),
                  prefixText: prefixText,
                ),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              RoundedButton(
                  name: "Send code",
                  press: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpAuthenticate(PhoneNum:('0'+_phone),);
                        }))
                      }),
            ],
          ),
        ),
      ),
    ));
  }
}
