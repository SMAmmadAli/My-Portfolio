import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 2.5,
          fontFamily: 'Schyler',
          fontSize: 28,
          color: MyColor.blue),
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText("Mobile App Developer!"),
          TyperAnimatedText("Web Developer!"),
          TyperAnimatedText("Frontend Developer!"),
          TyperAnimatedText(MyText.myfield),
        ],
      ),
    );
  }
}
