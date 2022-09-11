// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class AppButtons extends StatelessWidget {
  final double? fontSize;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  const AppButtons({
    Key? key,
    this.fontSize = 15,
    this.onTap,
    this.backgroundColor = Colors.blueAccent,
    this.textColor = Colors.white,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (text == "Select your bank account") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => ThirdPage()),
            ),
          );
        } else if (text == "Tap for 1-click KYC") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => MyHomePage(
                    title: 'HomePage',
                  )),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => SecondPage()),
            ),
          );
        }
      },
      child: Container(
        width: 425,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
