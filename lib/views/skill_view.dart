import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_constant.dart';
import 'package:portfolio/widgets/skillls_widgets/web_animated_circular_indigator.dart';
import 'package:portfolio/widgets/heading.dart';

import '../widgets/skillls_widgets/mobile_skillview.dart';
import '../widgets/skillls_widgets/web_skillview.dart';
import '../widgets/skillls_widgets/web_animated_linear_indicator.dart';

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
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 650) {
            return MobileSkillView();
          } else {
            return WebSkillView();
          }
        }));
  }
}
