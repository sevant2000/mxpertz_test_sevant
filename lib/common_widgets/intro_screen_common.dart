import 'package:flutter/material.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/color_constants.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/image_constants.dart';
import 'package:mxpertz_machine_test_sevant/common_widgets/navigation_helper.dart';
import 'package:mxpertz_machine_test_sevant/screens/login_screen.dart';

// ignore: must_be_immutable
class IntroScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  void Function()? nextTap;

  IntroScreen({
    super.key,
    required this.imagePath,
    required this.title,
    this.nextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.backgroundColor,
      body: Center(child: Image.asset(imagePath, fit: BoxFit.cover)),
      bottomNavigationBar: Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      NavigationHelper.pushAndRemoveUntil(context, LoginScreen());
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Text(
                        "Skip",
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: nextTap,
                    child: Image.asset(CommonImages.icArrow, height: 75),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
