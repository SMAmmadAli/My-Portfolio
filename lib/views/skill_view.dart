import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_constant.dart';
import 'package:portfolio/widgets/animated_circular_indigator.dart';
import 'package:portfolio/widgets/heading.dart';

import '../widgets/animated_linear_indicator.dart';

class SkillView extends StatelessWidget {
  const SkillView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.bgColor,
      ),
      backgroundColor: MyColor.bgColor,
      body: SingleChildScrollView(
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
                  padding:
                      const EdgeInsets.only(left: 120, top: 40, bottom: 80),
                  child: Text("Skills",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                          fontFamily: 'Trajan Pro',
                          fontSize: 26,
                          color: MyColor.white)),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.36,
              child: Row(
                children: const [
                  Expanded(
                    child: AnimatedCircularIndicator(
                        percentage: 0.9, label: "flutter"),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Expanded(
                    child: AnimatedCircularIndicator(
                        percentage: 0.8, label: "Firebase"),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Expanded(
                    child: AnimatedCircularIndicator(
                        percentage: 0.3, label: "Django"),
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 120, top: 40, bottom: 80),
                  child: Text("Coding",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                          fontFamily: 'Trajan Pro',
                          fontSize: 26,
                          color: MyColor.white)),
                ),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.44,
                height: MediaQuery.of(context).size.height * 1,
                child: Column(
                  children: const [
                    AnimatedLinearIndicator(label: "Dart", percentage: 0.9),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(label: "Python", percentage: 0.8),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(label: "Flutter", percentage: 0.9),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(label: "Django", percentage: 0.3),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(label: "HTML", percentage: 0.8),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(label: "CSS", percentage: 0.7),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(
                        label: "Bootstrap", percentage: 0.6),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(
                        label: "JavaScript", percentage: 0.5),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedLinearIndicator(label: "Java", percentage: 0.5),
                    SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
