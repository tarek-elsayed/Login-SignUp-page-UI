import 'package:flutter/material.dart';
import 'package:ui_design/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColors,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          onPressed: press,
        ),
      ),
    );
  }
}