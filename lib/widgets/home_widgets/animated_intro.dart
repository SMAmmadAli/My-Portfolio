import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class AnimatedIntro extends StatelessWidget {
  const AnimatedIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          MyText.intro,
          textAlign: TextAlign.center,
          textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              height: 1.8,
              letterSpacing: 1.2,
              fontFamily: 'Trajan Pro',
              fontSize: 14,
              color: MyColor.white),
          speed: const Duration(milliseconds: 2),
        ),
      ],
      totalRepeatCount: 1,
      // pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: false,
    );
  }
}
