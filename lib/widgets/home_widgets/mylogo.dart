import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

Widget MyLogo() {
  return Text(
    MyText.logo,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        fontFamily: 'Lobster',
        fontSize: 25,
        color: MyColor.blue),
  );
}
