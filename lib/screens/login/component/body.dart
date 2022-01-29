import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/components/roundedTextFeild.dart';
import 'package:ui_design/components/rounded_button.dart';
import 'package:ui_design/constants.dart';
import 'package:ui_design/screens/login/component/backgroud.dart';
import 'package:ui_design/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * .35,
            ),
            RoundedInputField(
              icon: Icons.person,
              hintText: 'Your Email',
              onChange: (value) {},
            ),
            PasswordFieldContainer(
              onChange: (value) {},
            ),
            SizedBox(
              height: size.height * .03,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
              textColor: Colors.white,
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have and account ?',
                  style: TextStyle(color: kPrimaryColors, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    " Sign Up",
                    style: TextStyle(
                      color: kPrimaryColors,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
