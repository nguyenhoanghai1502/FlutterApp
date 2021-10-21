import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //Put Figma size here
      designSize: const Size(1080, 1920),
      builder: () {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.lightBlue,
            body: Center(
              child: Text("Hello World!"),
            ),
          ),
        );
      },
    );
  }
}
