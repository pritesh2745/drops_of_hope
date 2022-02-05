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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class registration extends StatelessWidget {
  // const ragistration({Key? key}) : super(key: key);
  FirebaseAuth auth = FirebaseAuth.instance;

  void signup(BuildContext context , String username, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: username, password: password);

      Navigator.of(context).pushNamed("/login");
    } catch (e) {
      print(e);
    }
  }

  late String username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
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
                  onChanged: (value) {
                    username = value;
                  },
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
                  onChanged: (value) {
                    password = value;
                  },
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
                signup(context, username,password);
                // Navigator.of(context).pushNamed("/login");
                print("hello folks");
              },
            )),
          ],
        ),
      ),
    );
  }
}
