import 'package:flutter/material.dart';
import 'package:ui_design/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: onChange,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: kPrimaryColors,
            ),
            border: InputBorder.none),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryLightColors, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
class PasswordFieldContainer extends StatelessWidget {
  final ValueChanged<String> onChange;

  const PasswordFieldContainer({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.lock,
              color: kPrimaryColors,
            ),
            hintText: 'Password',
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColors,
            )),
      ),
    );
  }
}
