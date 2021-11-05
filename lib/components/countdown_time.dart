import 'dart:async';

import 'package:flutter/material.dart';

import '../constants.dart';

class CountDownText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CountDownTextState();
  }
}

class _CountDownTextState extends State<CountDownText> {
  Duration duration = Duration();
  static const countdownDuration = Duration(minutes: 5);
  Timer? timer;
  bool isCountDown = true;
  @override
  void initState() {
    super.initState();
    startTimer();
    reset();
  }

  void reset() {
    if (!isCountDown) {
      setState(() {
        duration = Duration();
      });
    } else {
      setState(() {
        duration = countdownDuration;
      });
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => {countdownTime()});
  }

  void countdownTime() {
    final countseconds = -1;
    setState(() {
      final seconds = duration.inSeconds + countseconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return (Text(
      '$minutes:$seconds',
      style: TextStyle(
          fontSize: 14, color: linkColor, decoration: TextDecoration.underline),
    ));
  }
}
