import 'package:flutter/material.dart';
import 'package:portfolio/utils/image_constant.dart';
import 'package:portfolio/widgets/home_widgets/animated_intro.dart';
import 'package:portfolio/widgets/home_widgets/social_icon.dart';
import 'package:portfolio/widgets/home_widgets/view_button_column.dart';
import 'animated_text.dart';
import 'name_text.dart';

class MobileMiddleContent extends StatelessWidget {
  const MobileMiddleContent({super.key});

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
                width: MediaQuery.of(context).size.width * 0.8,
                child: NameText()),
            const SizedBox(
              height: 12,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: MyAnimatedText()),
            const SizedBox(
              height: 16,
            ),
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MyImage.coverPic), fit: BoxFit.fill)),
                width: MediaQuery.of(context).size.width * 0.8,
                child: AnimatedIntro()),
            const SizedBox(
              height: 20,
            ),
            ViewButtonColumn(),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialIcon(),
              ],
            )
          ]))
    ]);
  }
}
