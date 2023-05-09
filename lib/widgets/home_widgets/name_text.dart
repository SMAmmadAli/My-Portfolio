import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';

class NameText extends StatelessWidget {
  const NameText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: MyText.hello,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: 32,
                fontFamily: 'Schyler',
                color: MyColor.white),
            children: <TextSpan>[
          TextSpan(
              text: MyText.name,
              style: TextStyle(
                  color: MyColor.blueAccent,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Lobster'))
        ]));
  }
}
