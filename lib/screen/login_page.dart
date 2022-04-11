import 'package:app1/screen/SplashScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  String userName;
  LoginPage(this.userName);
  @override
  State<LoginPage> createState() => _LoginPageState(userName);
}

class _LoginPageState extends State<LoginPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String userName;
  _LoginPageState(this.userName);
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
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            //   child: Column(
            //     children: [
            //       TextFormField(
            //         decoration: InputDecoration(
            //           hintText: "Enter username",
            //           labelText: "Username",
            //         ),
            //       ),
            //       TextFormField(
            //         obscureText: true,
            //         decoration: InputDecoration(
            //           hintText: "Enter password",
            //           labelText: "Password",

            //         ),
            //       ),
            //       SizedBox(
            //         height: 40.0,
            //       ),

            //       ElevatedButton(
            //         child: Text("Login"),
            //         style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            //         onPressed: () {
            //           signup();
            //           Navigator.of(context).pushNamed("/Splash");
            //           print("hello folks");
            //         },
            //       )
            //       // ElevatedButton(
            //       //   child: Text("Login"),
            //       //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            //       //   onPressed: () {
            //       //     signup();
            //       //   },
            //       // )
            //     ],
            //   ),
            // ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                cursorColor: Color.fromARGB(255, 156, 154, 154),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 114, 113, 113),
                  ),
                  hintText: "Enter Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                cursorColor: Color.fromARGB(255, 156, 154, 154),
                decoration: InputDecoration(
                  focusColor: Color.fromARGB(255, 245, 31, 31),
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color.fromARGB(255, 114, 113, 113),
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Write Click Listener Code Here
                },
                child: Text("Forget Password?"),
              ),
            ),

            GestureDetector(
              onTap: () {
                // Write Click Listener Code Here.
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 112, 92, 167)),
                    Color.fromARGB(255, 112, 92, 167)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here
                    //       ElevatedButton(
                    //         child: Text("Login"),
                    //         style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //         onPressed: () {
                    //           signup();
                    //           Navigator.of(context).pushNamed("/Splash");
                    //           print("hello folks");
                    //         },
                    //       )
                    signup();
                    // Navigator.of(context).pushNamed("/Splash");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SplashScreen(userName)));
                    print("hello folks");
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Any Account?  "),
                  GestureDetector(
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Color.fromARGB(255, 64, 19, 146)),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SignUpScreen(),
                      //   )
                      // );
                    },
                  )
                ],
              ),
            )
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