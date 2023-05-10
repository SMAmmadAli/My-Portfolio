import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../utils/color_constant.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        IconButton(
          onPressed: () async {
            var url =
                await 'https://instagram.com/the_ammadali?igshid=ZGUzMzM3NWJiOQ==';
            launchUrlString(url);
          },
          icon: Icon(FontAwesomeIcons.instagram),
          color: Colors.orange.shade900,
          iconSize: 30,
          // color: C,
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () async {
            var url =
                await 'https://www.facebook.com/sm.ammadali.7?mibextid=ZbWKwL';
            launchUrlString(url);
          },
          icon: FaIcon(Icons.facebook),
          iconSize: 30,
          color: MyColor.blue,
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () async {
            var url = await 'https://www.linkdin.com/';
            launchUrlString(url);
          },
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: MyColor.blue,
          iconSize: 30,
          // color: MyColor.blue,
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () async {
            var url = await 'https://www.github.com/SMAmmadAli';
            launchUrlString(url);
          },
          icon: FaIcon(FontAwesomeIcons.github),
          color: Colors.grey,
          iconSize: 30,
          // color: MyColor.blue,
        )
      ],
    );
  }
}
