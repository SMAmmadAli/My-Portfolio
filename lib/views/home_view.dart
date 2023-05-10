import 'package:flutter/material.dart';
import '../utils/color_constant.dart';
import '../widgets/home_widgets/mobile_homeview.dart';
import '../widgets/home_widgets/web_homeview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: MyColor.bgColor,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth < 650) {
                    return MobileHomeView();
                  } else {
                    return WebHomeView();
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
