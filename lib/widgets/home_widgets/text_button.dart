import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/color_constant.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final Function;
  const MyTextButton({super.key, required this.text, this.Function});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: Function,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2,
              fontSize: 20,
              fontFamily: 'Lobster',
              color: MyColor.blue),
        ));
  }
}
