import 'package:flutter/material.dart';
import 'package:portfolio/views/about_view.dart';
import 'package:portfolio/views/edu_view.dart';
import 'package:portfolio/views/skill_view.dart';
import 'package:portfolio/widgets/button1.dart';

import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/text_constant.dart';
import '../widgets/home_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: MyColor.bgColor,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(55, 20, 120, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            MyText.logo,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                fontFamily: 'Lobster',
                                fontSize: 25,
                                color: MyColor.blue),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 500,
                      ),
                      HomeTexts(
                          text1: MyText.home,
                          Function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          }
                          // color: MyColor.blue,
                          ),
                      HomeTexts(
                        text1: MyText.about,
                        Function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutView()));
                        },
                        // color: MyColor.white,
                      ),
                      HomeTexts(
                          text1: MyText.education,
                          Function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EduView()));
                          }
                          // color: MyColor.white,
                          ),
                      HomeTexts(
                          text1: MyText.skill,
                          Function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SkillView()));
                          }
                          // color: MyColor.white,
                          ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          RichText(
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
                                        color: MyColor.lightBlu,
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'Lobster'))
                              ])),
                          // Text(
                          //   MyText.name,
                          // style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     letterSpacing: 1.5,
                          //     fontSize: 32,
                          //     fontFamily: 'Schyler',
                          //     color: MyColor.white),
                          // ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            MyText.myfield,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.5,
                                fontFamily: 'Schyler',
                                fontSize: 28,
                                color: MyColor.blue),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            MyText.intro,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Trajan Pro',
                                height: 1.8,
                                letterSpacing: 1.2,
                                fontSize: 14,
                                color: MyColor.white),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MyButton1(
                                text1: "Hire me",
                                color: MyColor.blueAccent,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              MyButton1(
                                text1: "Let's Talk",
                                color: MyColor.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      MyImage.coverPic,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
