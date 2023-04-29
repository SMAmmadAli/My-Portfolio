import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

import '../viewmodels/button_viewmodel.dart';

class MyButton1 extends StatelessWidget {
  final String text1;
  final Color color;
  const MyButton1({super.key, required this.text1, required this.color});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ButtonViewModel(),
        builder: ((context, viewModel, child) {
          return InkWell(
            onTap: () {},
            onHover: (hovered) {
              viewModel.onHover(hovered);
            },
            child: Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                  border: Border.all(color: color, width: 2),
                  boxShadow: [
                    for (double i = 1; i < 4; i++)
                      BoxShadow(
                          color: color,
                          spreadRadius: -1,
                          blurRadius: (viewModel.isPressed ? 5 : 2) * i,
                          blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  text1,
                  style: TextStyle(color: MyColor.white, shadows: [
                    for (double i = 1; i < 5; i++)
                      Shadow(
                        color: color,
                        blurRadius: (viewModel.isPressed ? 1 : 0) * i,
                      ),
                  ]),
                ),
              ),
            ),
          );
        }));
  }
}
