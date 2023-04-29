import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/color_constant.dart';

class Headings extends StatelessWidget {
  final String text1;
  final String text2;
  const Headings({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Center(
            child: RichText(
                text: TextSpan(
                    text: text1,
                    style: TextStyle(
                      fontSize: 44,
                      letterSpacing: 1.2,
                      fontFamily: 'Trajan Pro',
                      fontWeight: FontWeight.w800,
                      color: MyColor.white,
                    ),
                    children: <TextSpan>[
                  TextSpan(text: text2, style: TextStyle(color: MyColor.blue))
                ])),
          ),
        ),
      ],
    );
  }
}
