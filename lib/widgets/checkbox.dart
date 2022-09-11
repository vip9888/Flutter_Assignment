// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBox extends StatefulWidget {
  final double width;
  final double borderwidth;
  final double height;
  final Color? bordercolor;
  final Color color;

  const CheckBox({
    Key? key,
    required this.width,
    required this.borderwidth,
    required this.height,
    this.bordercolor = Colors.white,
    required this.color,
  }) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.transparent,
            border: Border.all(
              color: Colors.white,
              width: 2,
            )),
        width: 30,
        height: 30,
        child: value
            ? Icon(
                Icons.check,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
