import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseAuth auth = FirebaseAuth.instance;

  void signup() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: "20dit105@charusat.edu.in", password: "123456");
      Navigator.of(context).pushNamed("/Splash");
    } catch (e) {
      print(e);
    }
  }

  void signin() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: "20dit105@charusat.edu.in", password: "123456");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome ",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                      
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      signup();
                      Navigator.of(context).pushNamed("/Splash");
                      print("hello folks");
                    },
                  )
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: () {
                  //     signup();
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset(
//               "assets/images/photo2.png",
//               fit: BoxFit.cover,
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text(
//               "Welcome",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                       hintText: "Enter username",
//                       labelText: "Username",
//                     ),
//                     validator: (value) {
//                           if (value.isEmpty) {
//                             return "Username cannot be empty";
//                           }

//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                   ),
//                   TextFormField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: "Enter password",
//                       labelText: "Password",
//                     ),
//                       validator: (value) {
//                           if (value.isEmpty) {
//                             return "Password cannot be empty";
//                           } else if (value.length < 6) {
//                             return "Password length should be atleast 6";
//                           }

//                           return null;
//                         },
//                   ),
//                   SizedBox(
//                     height: 40.0,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }