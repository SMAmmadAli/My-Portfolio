import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/color_constant.dart';
import '../heading.dart';
import 'web_animated_circular_indigator.dart';
import 'web_animated_linear_indicator.dart';

class MobileSkillView extends StatelessWidget {
  const MobileSkillView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Headings(text1: "My ", text2: "Skills"),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.2,
                    top: 20,
                    bottom: 30),
                child: Text("Skills",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        fontFamily: 'Trajan Pro',
                        fontSize: 22,
                        color: MyColor.white)),
              ),
            ],
          ),
          Container(
            height: 600,
            width: 130,
            child: Column(
              children: const [
                Expanded(
                  child: MobileAnimatedCircularIndicator(
                      percentage: 0.9, label: "flutter"),
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: MobileAnimatedCircularIndicator(
                      percentage: 0.8, label: "Firebase"),
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: MobileAnimatedCircularIndicator(
                      percentage: 0.3, label: "Django"),
                ),
              ],
            ),
          ),
          const Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.2,
                    top: 20,
                    bottom: 30),
                child: Text("Coding",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                        fontFamily: 'Trajan Pro',
                        fontSize: 20,
                        color: MyColor.white)),
              ),
            ],
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                children: const [
                  MobileAnimatedLinearIndicator(label: "Dart", percentage: 0.9),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(
                      label: "Python", percentage: 0.8),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(
                      label: "Flutter", percentage: 0.9),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(
                      label: "Django", percentage: 0.3),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(label: "HTML", percentage: 0.8),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(label: "CSS", percentage: 0.7),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(
                      label: "Bootstrap", percentage: 0.6),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(
                      label: "JavaScript", percentage: 0.5),
                  SizedBox(
                    height: 20,
                  ),
                  MobileAnimatedLinearIndicator(label: "Java", percentage: 0.5),
                  SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                ],
              )),
        ],
      ),
    );
  }
}
