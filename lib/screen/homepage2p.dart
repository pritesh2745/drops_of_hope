import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonorDetailsWidget extends StatefulWidget {
  // const DonorDetailsWidget({Key key}) : super(key: key);

  @override
  _DonorDetailsWidgetState createState() => _DonorDetailsWidgetState();
}

class _DonorDetailsWidgetState extends State<DonorDetailsWidget> {
  late TextEditingController textController10;
  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  late TextEditingController textController4;
  late TextEditingController textController5;
  late TextEditingController textController6;
  late TextEditingController textController7;
  late TextEditingController textController8;
  late TextEditingController textController9;
  late TextEditingController textController11;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController();
    textController8 = TextEditingController();
    textController9 = TextEditingController();
    textController10 = TextEditingController();
    textController11 = TextEditingController();
  }

  _submitData(String n1, String n2, String n3, String n4, String n5, String n6,
      String n7, String n8, String n9, String n10, String n11) {
    print(n1);
    FirebaseFirestore.instance
        .collection('UserData')
        .doc('abmCfjS9bBl6TY8nIRMY')
        .set({
      'Name ': n2,
      'Id ': n1,
      'Address ': n3,
      'MobieNumber ': n4,
      'Department ': n5,
      'Blood Group ': n6,
      'Age ': n7,
      'Gender ': n8,
      'Last Time Blood Donated': n9,
      'Suffering from any disease?': n10,
      'Which disease?': n11
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF393C),
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: Colors.transparent,
          // borderRadius: 30,
          // borderWidth: 1,
          // buttonSize: 60,
          iconSize: 60,

          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Text(
            'Donor Details',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 1,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.96, -0.95),
                    child: Text(
                      'ID :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.96, -0.19),
                    child: Text(
                      'Age :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.95, -0.05),
                    child: Text(
                      'Gender :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.96, -0.72),
                    child: Text(
                      'Address :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.95, -0.84),
                    child: Text(
                      'Full Name :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.95, -0.58),
                    child: Text(
                      'Mobile No :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.96, -0.33),
                    child: Text(
                      'Blood Group :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.94, -0.44),
                    child: Text(
                      'Department :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.96, 0.48),
                    child: Text(
                      'Which disease?',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.93, 0.32),
                    child: Text(
                      'Suffering from \nany  disease? :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.93, 0.11),
                    child: Text(
                      'Last time blood \ndonated :*',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.88, 0.33),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 0),
                      child: TextFormField(
                        controller: textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.84, -0.04),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 0),
                      child: TextFormField(
                        controller: textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.93, -0.84),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.88, 0.56),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController4,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.88, 0.18),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController5,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.92, -0.94),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 60),
                      child: TextFormField(
                        controller: textController6,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.96, -0.7),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController7,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.streetAddress,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.12, -0.57),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController8,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.84, -0.42),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController9,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.13, -0.3),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController10,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.74, -0.16),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
                      child: TextFormField(
                        controller: textController11,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  //  Container(
                  //       padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  //       child:  RaisedButton(
                  //         child: const Text('Submit'),
                  //         onPressed: _submitData(
                  //             textController1.toString(),
                  //             textController2.toString(),
                  //             textController3.toString(),
                  //             textController4.toString(),
                  //             textController5.toString(),
                  //             textController6.toString(),
                  //             textController7.toString(),
                  //             textController8.toString(),
                  //             textController9.toString(),
                  //             textController10.toString(),
                  //             textController11.toString()),
                  //       ),
                  //     ),

                  Align(
                    alignment: AlignmentDirectional(0, 0.68),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: ElevatedButton(
                        // onPressed: () {
                        //   print('Button pressed ...');
                        // },
                        child: const Text('Submit'),
                        onPressed: () => _submitData(
                            textController1.text,
                            textController2.text,
                            textController3.text,
                            textController4.text,
                            textController5.text,
                            textController6.text,
                            textController7.text,
                            textController8.text,
                            textController9.text,
                            textController10.text,
                            textController11.text),
                        // child:(
                        //   width: 130,
                        //   height: 40,
                        //   // color: Colors.primaryColor,
                        //   textStyle: TextStyle(
                        //         fontFamily: 'Poppins',
                        //         color: Colors.white,
                        //       ),
                        //   borderSide: BorderSide(
                        //     color: Colors.transparent,
                        //     width: 1,
                        //   ),
                        //   borderRadius: 12,
                        // ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
