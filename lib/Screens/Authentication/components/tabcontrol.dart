import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_mental_health/components/label_text.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/constants.dart';
import '../data_provicy.dart';
import 'SignUp/SignUpWithPhone/sign_up_with_phone.dart';
import '../../../components/text_field_input.dart';

class TabControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabControlState();
  }
}

class _TabControlState extends State<TabControl>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppBackgroundColor,
            shadowColor: Colors.transparent,
            bottom: TabBar(
                controller: _tabController,
                indicatorColor: blackColor,
                labelColor: blackColor,
                unselectedLabelColor: greyColor,
                tabs: [
                  Tab(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: textFont,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: textFont,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
          ),
          body: TabBarView(controller: _tabController, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 108,
                      decoration: BoxDecoration(color: greyColor),
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    ),
                    TextFieldInput(hinText: "Email / Phone number"),
                    TextFieldInput(hinText: "Password"),
                    RoundedButton(
                        name: "Login", marginVertical: 10, press: () => {}),
                    SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    Text("Forgot password?",
                        style: TextStyle(
                            fontFamily: textFont,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w600,
                            color: blackColor)),
                    SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    RoundedButton(
                        name: "Log in with Facebook",
                        marginVertical: 10,
                        press: () => {}),
                    SizedBox(
                      height: 160,
                      width: double.infinity,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () => {
                          _tabController
                              .animateTo((_tabController.index + 1) % 2)
                        },
                        child: LabelText(
                          name: "Don’t have account ?",
                          selector: " Sign up",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Scaffold(
              backgroundColor: greyColor,
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundedButton(
                              name: "Sign up with email",
                              marginVertical: 10,
                              press: () => {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return DataPolicy(
                                            mdFileName: 'privacy_policy.md',
                                            navigator: SignUpWithPhone(),
                                          );
                                        })
                                  }),
                          RoundedButton(
                              name: "Sign up with phone number",
                              marginVertical: 10,
                              press: () => {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return DataPolicy(
                                            mdFileName: 'privacy_policy.md',
                                            navigator: SignUpWithPhone(),
                                          );
                                        }),
                                  }),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                          ),
                          GestureDetector(
                            onTap: () => {
                              _tabController
                                  .animateTo((_tabController.index + 1) % 2)
                            },
                            child: LabelText(
                              name: "Already have account ?",
                              selector: " Log in",
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            )
          ]),
        );
      }),
    );
  }
}
