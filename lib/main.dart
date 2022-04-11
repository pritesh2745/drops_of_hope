import 'package:app1/screen/SplashScreen.dart';
import 'package:app1/screen/login_page.dart';
import 'package:app1/screen/registration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()
          // primarySwatch: Colors.red,
          ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      initialRoute: "/registration",
      routes: {
        // "/": (context) => LoginPage(),
        // "/home": (context) => Homepage(),
        "/registration": (context) => registration(),
        // "/login": (context) =>  LoginPage(),
        // "/Splash": (context) => SplashScreen(),
      },
    );
  }
}


