import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import 'OnBoarding.dart';

class SplashScreen extends StatefulWidget {
  String userName;
  SplashScreen(this.userName);
  @override
  _SplashScreenState createState() => _SplashScreenState(userName);
}

class _SplashScreenState extends State<SplashScreen> {
  String userName;
  _SplashScreenState(this.userName);
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen(userName))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
              
                 // ignore: prefer_const_constructors
               
 const SizedBox(
                  height: 50,
                ),
                   Container(
                     
                     child: Image(
                              image: AssetImage(
                                'assets/images/bloodphoto.jpg',
                              ),
                              height: 320.0,
                              width: 320.0,
                            ),
                   ),
                      const SizedBox(
                  height: 50,
                ),
                Center(
                    
                    child: const 
                    Text("Blood Donation App",
                    
                      style: TextStyle(
                                      fontFamily: 'Ubuntu',
                                      color: Color.fromARGB(255, 11, 11, 11),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,),
                    )

                    
                    ),
                 
                // SvgPicture.asset(
                //   'assets/images/BestDesign.svg',
                //   height: 450,
                //   alignment: Alignment.center,
                // ),
                const SizedBox(
                  height: 30,
                ),
                Lottie.asset("assets/animations/lf30_editor_7io4xwvy.json",
                    height: 300)
              ],
            ),
          ),
        ));
  }
}
