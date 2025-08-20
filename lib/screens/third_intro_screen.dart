import 'package:flutter/material.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/image_constants.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/intro_screen_common.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/navigation_helper.dart';
import 'package:mxpertz_machine_test_sevant/screens/login_screen.dart';

class ThirdIntroScreen extends StatefulWidget {
  const ThirdIntroScreen({super.key});

  @override
  State<ThirdIntroScreen> createState() => _ThirdIntroScreenState();
}

class _ThirdIntroScreenState extends State<ThirdIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
        imagePath: CommonImages.secondIntro,
        title: "HOME DELIVER SERVICE",
        nextTap: () {
          NavigationHelper.pushAndRemoveUntil(context, LoginScreen());
        },
      ),
    );
  }
}
