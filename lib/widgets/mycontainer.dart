import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class MyContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Function;
  const MyContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.Function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: Function,
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        height: MediaQuery.of(context).size.height * .2,
        decoration: BoxDecoration(
          border: Border.all(color: MyColor.blueAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.calendar_circle_fill,
                    color: MyColor.blue,
                    size: 15,
                  ),
                  const SizedBox(
                    // height: 6,
                    width: 6,
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 18,
                        color: MyColor.blueAccent,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                text2,
                style: TextStyle(
                  fontSize: 14,
                  color: MyColor.white,
                  // fontFamily: 'Lobster',
                  // fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text3,
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 1.3,
                  height: 1.1,
                  color: MyColor.white,
                  // fontFamily: 'Lobster',
                  // fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
