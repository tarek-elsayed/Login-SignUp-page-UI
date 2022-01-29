import 'package:flutter/material.dart';
import 'package:ui_design/constants.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: size.width * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.black45,
                height: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 8),
              child: Text(
                "OR",
                style: TextStyle(
                  color: kPrimaryColors,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.black45,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}