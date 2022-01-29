import 'package:flutter/material.dart';
import 'package:ui_design/components/rounded_button.dart';
import 'package:ui_design/constants.dart';
import 'package:ui_design/screens/login/login_screen.dart';
import 'package:ui_design/screens/signup/signup_screen.dart';
import 'package:ui_design/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this is size of screen (height&width)
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO EDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              textColor: Colors.white,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              text: 'LOGIN',
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              color: kPrimaryLightColors,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ));
              },
              text: 'SIGN UP',
            ),
          ],
        ),
      ),
    );
  }
}
