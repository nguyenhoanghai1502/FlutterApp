import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mental_health/Screens/Authentication/authentication_screen.dart';
import 'package:flutter_mental_health/Screens/Authentication/authentication_screen.dart';
import 'package:flutter_mental_health/view_models/app_provider.dart';
import 'package:flutter_mental_health/views/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppBackgroundColor
      ),
      home: AuthenticationScreen(),
    );
  }
}
