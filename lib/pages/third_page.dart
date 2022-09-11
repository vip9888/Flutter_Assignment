import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_assignment_1/widgets/button2.dart';
import 'package:flutter_assignment_1/widgets/buttons.dart';

import '../widgets/checkbox.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                _mainBackground3(),
                _textContainer3(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

_mainBackground3() {
  return Column(
    children: [
      Container(
        height: 700,
        color: Colors.grey.withOpacity(0.15),
      ),
    ],
  );
}

_textContainer3() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Where should we send the money',
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
              'amount will be credited to the bank account,EMI will ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.3)),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'also be debited from this bank account',
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
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "HDFC bank",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "50100117009192",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
            ),
            CheckBox(
              borderwidth: 2,
              width: 20,
              height: 20,
              bordercolor: Colors.white,
              color: Colors.white,
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.only(top: 40,left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Button_Second(fontSize: 12, text: "Change account", width: 150, height: 35),
          ],
        ),
      ),

      SizedBox(
        height: 375,
      ),

      AppButtons(text: "Tap for 1-click KYC"),

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
