import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_mental_health/components/rounded_button.dart';
import 'package:flutter_mental_health/constants.dart';

class DataPolicy extends StatelessWidget {
  final String mdFileName;
  Widget navigator;
  DataPolicy({Key? key, required this.mdFileName, required this.navigator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (Dialog(
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: Future.delayed(Duration(milliseconds: 150)).then((value) {
                return rootBundle.loadString('assets/documents/$mdFileName');
              }),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    data: snapshot.data.toString(),
                  );
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundedButton(
                      btnWidth: 150,
                      name: "Cancel",
                      bgColor: Colors.transparent,
                      textColor: linkColor,
                      press: () => {Navigator.of(context).pop()}),
                  RoundedButton(
                      btnWidth: 150,
                      name: "Agree",
                      bgColor: blueColor,
                      textColor: whiteColor,
                      press: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return navigator;
                            }))
                          }),
                ]),
          )
        ],
      ),
    ));
  }
}
