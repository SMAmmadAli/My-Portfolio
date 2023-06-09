import 'package:flutter/material.dart';
import 'package:portfolio/viewmodels/edu_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../utils/color_constant.dart';
import '../widgets/heading.dart';
import '../widgets/mycontainer.dart';

class EduView extends StatelessWidget {
  const EduView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => EduViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: MyColor.bgColor,
              ),
              backgroundColor: MyColor.bgColor,
              body: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Headings(
                      text1: "My ",
                      text2: "Journey",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyContainer(
                      text1: "2015-2017",
                      text2: "MATRICULATION",
                      text3: """Karachi Board
SMUI Model School Karachi""",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyContainer(
                      text1: "2017-2019",
                      text2: "INTERMEDIATE",
                      text3: "Nabi Bagh Z.M science College",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyContainer(
                      text1: "2020-present",
                      text2: "BACHELORS OF COMPUTER SCIENCE",
                      text3: "Sindh Madressatul Islam University.",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyContainer(
                      text1: "2020-2021",
                      text2: "DIT",
                      text3:
                          "1 Year Diploma of Information Technology from Vocational Training Center (VTC) 1 Year Diploma of Information Technology from Vocational Training Center (VTC)",
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyContainer(
                      text1: "2022-2023",
                      text2: "MOBILE APP & WEB DEVELOPMENT COURSE",
                      text3: " From Jawan Pakistan",
                    ),
                  ],
                ),
              ));
        });
  }
}
