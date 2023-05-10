import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MobileAnimatedCircularIndicator extends StatelessWidget {
  final double percentage;
  final String label;
  const MobileAnimatedCircularIndicator(
      {super.key, required this.percentage, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: Duration(seconds: 2),
              builder: (context, double value, child) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 8,
                      value: value,
                      color: MyColor.blueAccent,
                      backgroundColor: MyColor.bgColor,
                    ),
                    Center(
                      child: Text((value * 100).toInt().toString() + "%",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Trajan Pro',
                              fontSize: 20,
                              color: MyColor.white)),
                    )
                  ],
                );
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Trajan Pro',
                fontSize: 22,
                color: MyColor.white))
      ],
    );
  }
}
