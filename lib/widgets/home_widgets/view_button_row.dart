import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../button1.dart';

Widget ViewButtonRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      MyButton1(
        text1: "Hire me",
        color: MyColor.blueAccent,
      ),
      const SizedBox(
        width: 30,
      ),
      MyButton1(
        text1: "Let's Talk",
        color: MyColor.white,
      )
    ],
  );
}
