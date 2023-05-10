import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_widgets/webview_middle_content.dart';
import '../../utils/text_constant.dart';
import '../../views/about_view.dart';
import '../../views/edu_view.dart';
import '../../views/home_view.dart';
import '../../views/skill_view.dart';
import '../home_text.dart';
import 'mylogo.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 40, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyLogo(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
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
        WebMiddleContent()
      ],
    );
  }
}
