import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../utils/color_constant.dart';
import '../viewmodels/edu_viewmodel.dart';

class MyContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Function;
  const MyContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.Function});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => EduViewModel(),
        builder: (context, viewModel, child) {
          return InkWell(
            onTap: () {},
            onHover: (hovered) {
              viewModel.onHover(hovered);
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .2,
              decoration: BoxDecoration(
                color: viewModel.isPressed ? MyColor.lightBlu : MyColor.bgColor,
                // border: Border.all(color: MyColor.blueAccent, width: 2),
                border: Border.all(
                    color: viewModel.isPressed
                        ? Colors.purple.shade900
                        : Colors.black26,
                    width: 2),
                boxShadow: [
                  for (double i = 1; i < 10; i++)
                    BoxShadow(
                        color: Colors.purple.shade800,
                        spreadRadius: -1,
                        blurRadius: (viewModel.isPressed ? 8 : 2) * i,
                        blurStyle: BlurStyle.outer),
                  BoxShadow(
                      color: Colors.purple.shade600,
                      spreadRadius: -1,
                      blurRadius: (viewModel.isPressed ? 5 : 2),
                      blurStyle: BlurStyle.inner)
                ],
                borderRadius: viewModel.isPressed
                    ? BorderRadius.circular(20)
                    : BorderRadius.circular(8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.calendar_circle_fill,
                          color: viewModel.isPressed
                              ? Colors.blue.shade900
                              : MyColor.blue,
                          size: viewModel.isPressed ? 25 : 15,
                        ),
                        const SizedBox(
                          // height: 6,
                          width: 6,
                        ),
                        Text(
                          text1,
                          style: TextStyle(
                              fontSize: viewModel.isPressed ? 22 : 18,
                              color: viewModel.isPressed
                                  ? Colors.blue.shade900
                                  : MyColor.blueAccent,
                              fontFamily: 'Lobster',
                              fontWeight: viewModel.isPressed
                                  ? FontWeight.bold
                                  : FontWeight.w800),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: viewModel.isPressed ? 16 : 14,
                        color: MyColor.white,
                        // fontFamily: 'Lobster',
                        // fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                        fontSize: viewModel.isPressed ? 16 : 14,
                        letterSpacing: 1.3,
                        height: 1.1,
                        color: MyColor.white,
                        // fontFamily: 'Lobster',
                        // fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
