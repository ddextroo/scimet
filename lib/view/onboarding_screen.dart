import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    _checkFirstTime();
  }

  Future<void> _checkFirstTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? isFirstTime = prefs.getString("language") ?? "";

    if (isFirstTime != "") {
      Navigator.popAndPushNamed(context, "/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Learn Science, Your Way, in Your Language",
            body:
                "Seamlessly switch between Cebuano and Filipino to cater to diverse learners and enhance comprehension of science concepts. It is a passport to scientific discovery in the native language.",
            image: Center(
              child: SvgPicture.asset(
                "assets/images/onboardingimg.svg",
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
        ],
        done: const Text(
          "Get Started",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onDone: () {
          Navigator.of(context).pushReplacementNamed('/language');
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
