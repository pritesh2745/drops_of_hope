// import 'package:flutter/material.dart';

// class
// registrationPage extends StatelessWidget {
//   const
//   registrationPage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar() ,
//       body: Container(
//     margin: EdgeInsets.symmetric(horizontal: 10),
//         child: Column(children: [
//           TextFormField(
//             decoration: InputDecoration(

//    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red ),
//    borderRadius: BorderRadius.circular(10),

//             ),
//           )
//        ),
//           TextFormField(
//             decoration: InputDecoration(

//    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red ),
//    borderRadius: BorderRadius.circular(10),

//             ),
//           )
//        ),
//           TextFormField(
//             decoration: InputDecoration(

//    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red ),
//    borderRadius: BorderRadius.circular(10),

//             ),
//           )
//        ),
//           TextFormField(
//             decoration: InputDecoration(

//    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red ),
//    borderRadius: BorderRadius.circular(10),

//             ),
//           )
//        ),
//         ],) ,),
//     );
//   }
// }

import 'package:app1/pages/login_page.dart';
import 'package:app1/screen/SplashScreen.dart';
import 'package:flutter/material.dart';

class registrationPage extends StatelessWidget {
  // const registrationPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: ragistration());
  }
}

class ragistration extends StatelessWidget {
  // const ragistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/photo2.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "first name",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "last name",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "email",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: TextFormField(
                  decoration: InputDecoration(
                hintText: "blood group",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
            ),
            Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10), color: Colors.orange,
                // ),

                // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                // child: TextFormField(
                //     decoration: InputDecoration(
                //   hintText: "sign up",
                //   enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(width: 2, color: Colors.red),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                // )),
                child: ElevatedButton(
              child: Text("Sign up"),
              style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  LoginPage()),
            );
                print("hello folks");
              },
            )),
          ],
        ),
      ),
    );
  }
}
