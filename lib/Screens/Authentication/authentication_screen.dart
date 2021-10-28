import 'package:flutter/material.dart';

import 'components/tabcontrol.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        resizeToAvoidBottomInset: false,
        body: TabControl(),
      )
    );
  }
}
 