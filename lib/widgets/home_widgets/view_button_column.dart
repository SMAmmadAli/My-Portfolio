import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../button1.dart';

Widget ViewButtonColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      MyButton1(
        text1: "Hire me",
        color: MyColor.blueAccent,
      ),
      const SizedBox(
        height: 15,
      ),
      MyButton1(
        text1: "Let's Talk",
        color: MyColor.white,
      )
    ],
  );
}
