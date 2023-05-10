import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';

class WebImage extends StatelessWidget {
  const WebImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.11,
              backgroundColor: Colors.grey.shade500,
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.105,
              backgroundColor: MyColor.blue,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.1,
                backgroundColor: MyColor.bgColor,
                backgroundImage: AssetImage(MyImage.coverPic),
              ),
            ),
          ],
        )
      ],
    );
  }
}
