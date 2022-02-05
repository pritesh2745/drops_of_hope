import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import 'OnBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                Center(child: Text("Blood Donation App")),
                // SvgPicture.asset(
                //   'assets/images/BestDesign.svg',
                //   height: 450,
                //   alignment: Alignment.center,
                // ),
                SizedBox(
                  height: 230,
                ),
                Lottie.asset("assets/animations/lf30_editor_7io4xwvy.json",
                    height: 300)
              ],
            ),
          ),
        ));
  }
}