import 'package:flutter/material.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/image_constants.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/intro_screen_common.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/navigation_helper.dart';
import 'package:mxpertz_machine_test_sevant/screens/second_intro_screen.dart';

class FirstIntroScreen extends StatefulWidget {
  const FirstIntroScreen({super.key});

  @override
  State<FirstIntroScreen> createState() => _FirstIntroScreenState();
}

class _FirstIntroScreenState extends State<FirstIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
        imagePath: CommonImages.firstIntro,
        title: "ONLINE PAYMENT",
        nextTap: () {
          NavigationHelper.navigate(context, SecondIntroScreen());
        },
      ),
    );
  }
}
