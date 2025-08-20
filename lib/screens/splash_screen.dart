import 'package:flutter/material.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/image_constants.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/navigation_helper.dart';
import 'package:mxpertz_machine_test_sevant/screens/first_intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      if (mounted) {
        NavigationHelper.pushAndRemoveUntil(context, FirstIntroScreen());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: CommonColor.mainBGColor,
      body: Center(child: Image.asset(CommonImages.mainLogoImage, height: 150)),
    );
  }
}
