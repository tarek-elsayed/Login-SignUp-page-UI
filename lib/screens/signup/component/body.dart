import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/components/mydivider.dart';
import 'package:ui_design/components/roundedTextFeild.dart';
import 'package:ui_design/components/rounded_button.dart';
import 'package:ui_design/constants.dart';
import 'package:ui_design/screens/login/component/backgroud.dart';

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
              'assets/icons/signup.svg',
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
              text: 'SIGNUP',
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
                  'Already have an Account ? ',
                  style: TextStyle(color: kPrimaryColors, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: kPrimaryColors,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            MyDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcons(
                  press: () {},
                  iconSrc: 'assets/icons/google-plus.svg',
                ),
                SocialIcons(
                  press: () {},
                  iconSrc: 'assets/icons/facebook.svg',
                ),
                SocialIcons(
                  press: () {},
                  iconSrc: 'assets/icons/twitter.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;

  const SocialIcons({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kPrimaryColors,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
