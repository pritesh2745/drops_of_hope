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
      Widget bigCircle = new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );
    return Scaffold(
      
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 102, 72, 172),
      // ),
      body: SingleChildScrollView(
//         child: Column(
//           children: [
//            Container(
//              width:300.0,
//              height: 300.0,
//              decoration: new BoxDecoration(color: Colors.red,shape: BoxShape.circle,),
//            ),
 
          
//             // Container(
//             //   child: Image.asset(
//             //     "assets/images/photo2.png",
//             //     fit: BoxFit.cover,
//             //   ),
//             // ),
            
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//               child: TextFormField(
//                   decoration: InputDecoration(
//                 hintText: "first name",
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(width: 2, color: Colors.red),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               )),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//               child: TextFormField(
//                   decoration: InputDecoration(
//                 hintText: "last name",
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(width: 2, color: Colors.red),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               )),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//               child: TextFormField(
//                   onChanged: (value) {
//                     username = value;
//                   },
//                   decoration: InputDecoration(
//                     hintText: "email",
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(width: 2, color: Colors.red),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   )),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//               child: TextFormField(
//                   onChanged: (value) {
//                     password = value;
//                   },
//                   decoration: InputDecoration(
//                 hintText: "password",
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(width: 2, color: Colors.red),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               )),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//               child: TextFormField(
//                   decoration: InputDecoration(
//                 hintText: "blood group",
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(width: 2, color: Colors.red),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               )),
//             ),
//             Container(
//                 // decoration: BoxDecoration(
//                 //   borderRadius: BorderRadius.circular(10), color: Colors.orange,
//                 // ),

//                 // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//                 // child: TextFormField(
//                 //     decoration: InputDecoration(
//                 //   hintText: "sign up",
//                 //   enabledBorder: OutlineInputBorder(
//                 //     borderSide: BorderSide(width: 2, color: Colors.red),
//                 //     borderRadius: BorderRadius.circular(10),
//                 //   ),
//                 // )),
//                 child: ElevatedButton(
//               child: Text("Sign up"),
//               style: TextButton.styleFrom(minimumSize: Size(150, 40)),
//               onPressed: () {
                
//                 // main vastu


//                 // signup(context, username,password);




//  Navigator.of(context).pushNamed("/login");

//                 // Navigator.of(context).pushNamed("/login");
//                 print("hello folks");
//               },
//             )),
//           ],
//         ),



 
            child: Column(
              children: [
                Container(
                
                 
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                         
                            child: Image.asset(
                              "assets/images/undraw_circles_y7s2.png",
                              height: 300,
                              width: 500,
                              fit: BoxFit.contain,
                              
                            ),
                          ),


                          // Container(
                          //   margin: EdgeInsets.only(right: 20, top: 20),
                          //   alignment: Alignment.bottomRight,
                          //   child: Text(
                          //     "Register",
                          //     style: TextStyle(
                          //         fontSize: 20,
                          //         color: Color.fromARGB(255, 95, 95, 95)
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 156, 154, 154),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                         color: Color.fromARGB(255, 114, 113, 113),
                      ),
                      hintText: "Full Name",
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
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 156, 154, 154),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                       color: Color.fromARGB(255, 114, 113, 113),
                      ),
                      hintText: "Email",
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
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                     cursorColor: Color.fromARGB(255, 156, 154, 154),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 245, 31, 31),
                      icon: Icon(
                        Icons.phone,
                         color: Color.fromARGB(255, 114, 113, 113),
                      ),
                      hintText: "Phone Number",
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
                          color: Color(0xffEEEEEE)
                      ),
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

                GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here.
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [(Color.fromARGB(255, 112, 92, 167)), Color.fromARGB(255, 112, 92, 167)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have Already Member?  "),
                      GestureDetector(
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                            color: Color.fromARGB(255, 64, 19, 146)
                          ),
                      
                        ),
                        onTap: () {
                          // Write Tap Code Here.

 Navigator.of(context).pushNamed("/login");

                // Navigator.of(context).pushNamed("/login");
                print("hello folks");

                        
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        
      ),
    );
  }
}
