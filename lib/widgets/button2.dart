// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/pages/second_page.dart';

class Button_Second extends StatelessWidget {
  final double fontSize;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final double width;
  final double height;

  const Button_Second({
    Key? key,
    required this.fontSize,
    this.onTap,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(20),
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
