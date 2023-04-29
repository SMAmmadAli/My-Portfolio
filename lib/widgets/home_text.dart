import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_constant.dart';
import 'package:portfolio/viewmodels/hometext_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeTexts extends StatelessWidget {
  final Function;
  final String text1;
  const HomeTexts({
    super.key,
    required this.text1,
    this.Function,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeTextViewModel(),
        builder: (context, viewModel, child) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Function();
                },
                onHover: (hovered) {
                  viewModel.onHover(hovered);
                },
                child: Text(
                  text1,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2,
                      fontSize: 20,
                      fontFamily: 'Lobster',
                      color:
                          viewModel.isPressed ? MyColor.blue : MyColor.white),
                ),
              )
            ],
          );
        });
  }
}
