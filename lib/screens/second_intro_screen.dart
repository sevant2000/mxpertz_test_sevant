import 'package:flutter/material.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/image_constants.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/intro_screen_common.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/navigation_helper.dart';
import 'package:mxpertz_machine_test_sevant/screens/third_intro_screen.dart';

class SecondIntroScreen extends StatefulWidget {
  const SecondIntroScreen({super.key});

  @override
  State<SecondIntroScreen> createState() => _SecondIntroScreenState();
}

class _SecondIntroScreenState extends State<SecondIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(imagePath: CommonImages.secondIntro, title: "ONLINE SHOPPING", nextTap: () {
          NavigationHelper.navigate(context, ThirdIntroScreen());
        },),
    );
  }
}
