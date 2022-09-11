import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_assignment_1/widgets/button2.dart';
import 'package:flutter_assignment_1/widgets/checkbox.dart';

import '../widgets/buttons.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: h,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.withOpacity(0.15),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.15),
                    ),
                    child: Icon(
                      Icons.question_mark,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                _mainBackground2(),
                _textContainer2(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

_mainBackground2() {
  return Column(
    children: [
      Container(
        height: 700,
        color: Colors.grey.withOpacity(0.15),
      ),
    ],
  );
}

_textContainer2() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'how do you wish to repay',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.6)),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'choose one of our recommended plans or make your own plan',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.3)),
            ),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.only(top: 40, left: 20),
        height: 250,
        width: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 15),
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
              child: Stack(
                children: [
                  const Positioned(
                    top: 30,
                    left: 20,
                    child: CheckBox(
                      borderwidth: 2,
                      width: 40,
                      height: 40,
                      bordercolor: Colors.white,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '\u{20B9}${4247}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '/mo',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'for 12 months',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          'See calculations',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Button_Second(
              text: "Create your own plan",
              height: 40,
              width: 200,
              fontSize: 12,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 230,
      ),
      AppButtons(text: "Select your bank account"),
      SizedBox(
        height: 8,
      ),
      Center(
        child: Container(
          height: 3,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
