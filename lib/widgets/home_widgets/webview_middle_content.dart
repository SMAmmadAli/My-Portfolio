import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_widgets/animated_intro.dart';
import 'package:portfolio/widgets/home_widgets/social_icon.dart';
import 'package:portfolio/widgets/home_widgets/view_button_row.dart';
import '../../utils/image_constant.dart';
import 'animated_text.dart';
import 'name_text.dart';

class WebMiddleContent extends StatelessWidget {
  const WebMiddleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: NameText()),
            const SizedBox(
              height: 12,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: MyAnimatedText()),
            const SizedBox(
              height: 8,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: AnimatedIntro()),
            const SizedBox(
              height: 20,
            ),
            ViewButtonRow(),
            const SizedBox(
              height: 8,
            ),
            SocialIcon()
          ])),
      Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Image.asset(
          MyImage.coverPic,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.9,
        ),
      ),
    ]);
  }
}
