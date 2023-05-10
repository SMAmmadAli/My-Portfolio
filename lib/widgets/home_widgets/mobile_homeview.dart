import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/widgets/home_widgets/text_button.dart';

import '../../utils/color_constant.dart';
import '../../utils/text_constant.dart';
import '../../views/about_view.dart';
import '../../views/edu_view.dart';
import '../../views/home_view.dart';
import '../../views/skill_view.dart';
import 'mobileview_middlecontent.dart';
import 'mylogo.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyLogo(),
              IconButton(
                  onPressed: () {
                    Scaffold.of(context)
                        .showBottomSheet<void>((BuildContext context) {
                      return TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: 2),
                          duration: Duration(seconds: 2),
                          builder: (context, double value, child) {
                            return Container(
                              height: 250,
                              color: MyColor.bgColor,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    MyTextButton(
                                      text: MyText.home,
                                      Function: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const HomePage()));
                                      },
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    MyTextButton(
                                      text: MyText.about,
                                      Function: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AboutView()));
                                      },
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    MyTextButton(
                                      text: MyText.education,
                                      Function: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const EduView()));
                                      },
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    MyTextButton(
                                      text: MyText.skill,
                                      Function: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SkillView()));
                                      },
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Close",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: MyColor.white),
                                        )),
                                    const SizedBox(
                                      height: 60,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    });
                  },
                  icon: Icon(
                    Icons.menu,
                    color: MyColor.white,
                    size: 25,
                  )),
            ],
          ),
          MobileMiddleContent()
        ],
      ),
    );
  }
}
