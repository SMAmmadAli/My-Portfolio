import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MobileAnimatedLinearIndicator extends StatelessWidget {
  final double percentage;
  final String label;
  const MobileAnimatedLinearIndicator(
      {super.key, required this.percentage, required this.label});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: Duration(seconds: 2),
        builder: (context, double value, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: TextStyle(fontSize: 18, color: MyColor.white),
                  ),
                  Text(
                    (value * 100).toInt().toString() + "%",
                    style: TextStyle(fontSize: 14, color: MyColor.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              LinearProgressIndicator(
                value: value,
                color: MyColor.blueAccent,
                backgroundColor: MyColor.bgColor,
              ),
            ],
          );
        });
  }
}
