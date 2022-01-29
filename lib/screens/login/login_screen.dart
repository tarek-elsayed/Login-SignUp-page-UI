import 'package:flutter/material.dart';
import 'package:ui_design/screens/login/component/backgroud.dart';
import 'package:ui_design/screens/login/component/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}



