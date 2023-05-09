import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/color_constant.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.instagram),
          color: Colors.orange.shade900,
          iconSize: 30,
          // color: C,
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(Icons.facebook),
          iconSize: 30,
          color: MyColor.blue,
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: MyColor.blue,
          iconSize: 30,
          // color: MyColor.blue,
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.black,
          iconSize: 30,
          // color: MyColor.blue,
        )
      ],
    );
  }
}
