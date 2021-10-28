import 'package:flutter/material.dart';
import 'package:flutter_mental_health/constants.dart';
import 'SignUp/sign_up_body.dart';
import 'sign_in_body.dart';
import '../../../components/text_field_input.dart';

class TabControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: const TabBar(indicatorColor: textColor, tabs: [
              Tab(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 24,
                      fontFamily: textFont,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 24,
                      fontFamily: textFont,
                      fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
          body: TabBarView(children: [SinInBody(), SinUpBody()]),
        ),
      ),
    ));
  }
}

