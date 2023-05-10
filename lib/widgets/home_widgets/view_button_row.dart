import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../utils/color_constant.dart';
import '../button1.dart';

class ViewButtonRow extends StatelessWidget {
  const ViewButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyButton1(
          Function: () async {
            String email = Uri.encodeComponent("smammadali05@gmail.com");
            // String subject = Uri.encodeComponent("Hello Flutter");
            // String body = Uri.encodeComponent("Hi! I'm Flutter Developer");
            // print(subject); //output: Hello%20Flutter
            Uri mail = Uri.parse("mailto:$email");
            if (await launchUrl(mail)) {
            } else {
              AlertDialog alert = AlertDialog(
                title: Text("AlertDialog"),
                content: Text("Something went wrong! Try later"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Close"))
                ],
              );

              // show the dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alert;
                },
              );
            }
          },
          text1: "Hire me",
          color: MyColor.blueAccent,
        ),
        const SizedBox(
          width: 30,
        ),
        MyButton1(
          text1: "Let's Talk",
          color: MyColor.white,
          Function: () async {
            var url = await 'http://wa.me/+923308465535';
            launchUrlString(url);
          },
        )
      ],
    );
    ;
  }
}
