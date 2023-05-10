import 'package:flutter/material.dart';
import 'package:portfolio/utils/image_constant.dart';
import 'package:portfolio/utils/text_constant.dart';
import 'package:portfolio/widgets/about_widgets/mobile_image.dart';
import 'package:portfolio/widgets/about_widgets/web_image.dart';

import '../dimension/dimension.dart';
import '../utils/color_constant.dart';
import '../widgets/heading.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

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
            const Headings(
              text1: "About ",
              text2: "Me",
            ),
            const SizedBox(
              height: 40,
            ),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth == 500) {
                return MobileImage();
              } else {
                return WebImage();
              }
            }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: Text(
                      "Web & Mobile App Developer!",
                      style: TextStyle(
                        fontSize: 32,
                        color: MyColor.blue,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    MyText.intro,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                        letterSpacing: 1.2,
                        fontSize: 14,
                        color: MyColor.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
