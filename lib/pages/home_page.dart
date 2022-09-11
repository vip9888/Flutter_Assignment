import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/pages/second_page.dart';
import 'package:flutter_assignment_1/pages/third_page.dart';
import 'package:flutter_assignment_1/widgets/buttons.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  Container(
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                _mainBackground(),
                _textContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

_mainBackground() {
  return Column(
    children: [
      Container(
        height: 700,
        color: Colors.grey.withOpacity(0.15),
      ),
    ],
  );
}

_textContainer() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'nikunj, how much do you need?',
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
              'move the dial and set any amount you need upto 457,898',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.3)),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Stack(
        children: [
          Center(
            child: Container(
              width: 450,
              height: 450,
              padding: new EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                elevation: 10,
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 80),
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  size: 250,
                  startAngle: -90,
                  angleRange: 360,
                  customWidths: CustomSliderWidths(
                    handlerSize: 10,
                    progressBarWidth: 8,
                  ),
                  customColors: CustomSliderColors(
                    progressBarColor: Colors.deepOrange[100],
                    dotColor: Colors.black,
                  ),
                ),
                min: 0,
                max: 360,
                initialValue: 90,
                innerWidget: (val) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          'credit amount',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.withOpacity(1)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          '\u{20B9}${150000}',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'stash is instant. money will be credited within seconds',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(1)),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 70,
      ),
      AppButtons(
        text: "Proceed to EMI selection",
      ),
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
