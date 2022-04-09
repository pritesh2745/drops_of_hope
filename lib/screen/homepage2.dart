// import 'package:flutter/material.dart';
// // import 'package:flutter_form_builder/flutter_form_builder.dart';

// void main() => runApp(SurveyForm());

// class SurveyForm extends StatelessWidget {
//   // const SurveyForm({Key? key}) : super(key: key);

//   late String radioButtonValue1;
//   late TextEditingController textController1;
//   late String radioButtonValue2;
//   late TextEditingController textController2;
//   late String radioButtonValue3;
//   late TextEditingController textController3;
//   late TextEditingController textController4;
//   late TextEditingController textController5;
//   late TextEditingController textController6;
//   late TextEditingController textController7;
//   late TextEditingController textController8;
//   late TextEditingController textController9;
//   late String radioButtonValue4;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   get _formKey => null;

//   @override
//   void initState() {
//     // super.initState();
//     textController1 = TextEditingController();
//     textController2 = TextEditingController();
//     textController3 = TextEditingController();
//     textController4 = TextEditingController();
//     textController5 = TextEditingController();
//     textController6 = TextEditingController();
//     textController7 = TextEditingController();
//     textController8 = TextEditingController();
//     textController9 = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Validation Demo';

//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // void main() => runApp(());

// // Create a Form widget.
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({Key? key}) : super(key: key);

//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// // Create a corresponding State class.
// // This class holds data related to the form.
// class MyCustomFormState extends State<MyCustomForm> {
//   // Create a global key that uniquely identifies the Form widget
//   // and allows validation of the form.
//   //
//   // Note: This is a GlobalKey<FormState>,
//   // not a GlobalKey<MyCustomFormState>.

//   final _formKey = GlobalKey<FormState>();

//   var radioButtonValue1;

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey created above.
//     return Scaffold(
//       // key:_formKey,
//       // key: scaffoldKey
//       appBar: AppBar(
//         backgroundColor: Color(0xFFEF393C),
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//           icon: Icon(
//             //  color: Colors.transparent,
//             // borderRadius: 30,
//             // borderWidth: 1,
//             // buttonSize: 60,

//             Icons.arrow_back_rounded,
//             color: Colors.white,
//             size: 30,
//           ),
//           onPressed: () {
//             print('IconButton pressed ...');
//           },
//         ),
//         title: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
//           child: Text(
//             'Donor Details',
//             style: TextStyle(
//               fontFamily: 'Poppins',
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//         ),
//         actions: [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//     );
//     // ignore: dead_code
//     return Form(
//       key: _formKey,

//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height * 1,
//               child: Stack(
//                 children: [
//                   Align(
//                     alignment: AlignmentDirectional(-0.96, -0.95),
//                     child: Text(
//                       'ID :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.96, -0.19),
//                     child: Text(
//                       'Age :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.95, -0.05),
//                     child: Text(
//                       'Gender :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.96, -0.72),
//                     child: Text(
//                       'Address :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.95, -0.84),
//                     child: Text(
//                       'Full Name :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.95, -0.58),
//                     child: Text(
//                       'Mobile No :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.94, -0.31),
//                     child: Text(
//                       'Blood Group :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.94, -0.44),
//                     child: Text(
//                       'Department :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.96, 0.48),
//                     child: Text(
//                       'Which disease?',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.93, 0.32),
//                     child: Text(
//                       'Suffering from \nany  disease? :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(-0.93, 0.11),
//                     child: Text(
//                       'Last time blood \ndonated :*',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0.93, -0.84),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController1,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.black,
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                         keyboardType: TextInputType.name,
//                       ),
//                     ),
//                   ),
//                   // Align(
//                   //   alignment: AlignmentDirectional(0.17, 0.28),
//                   //   leading: Radio<Pet>(
//                   //     options: ['YES'],
//                   //     onChanged: (value) {
//                   //       setState(() => radioButtonValue1 = value);
//                   //     },
//                   //     optionHeight: 35,
//                   //     textStyle: TextStyle(
//                   //           fontFamily: 'Poppins',
//                   //           color: Colors.black,
//                   //         ),
//                   //     buttonPosition: RadioButtonPosition.left,
//                   //     direction: Axis.vertical,
//                   //     radioButtonColor: Colors.blue,
//                   //     inactiveRadioButtonColor: Color(0x8A000000),
//                   //     toggleable: false,
//                   //     horizontalAlignment: WrapAlignment.start,
//                   //     verticalAlignment: WrapCrossAlignment.start,
//                   //   ),
//                   // ),
//                   // Align(
//                   //   alignment: AlignmentDirectional(0.2, -0.05),
//                   //   child: FlutterFlowRadioButton(
//                   //     options: ['Male'],
//                   //     onChanged: (value) {
//                   //       setState(() => radioButtonValue2 = value);
//                   //     },
//                   //     optionHeight: 35,
//                   //     textStyle: TextStyle(
//                   //           fontFamily: 'Poppins',
//                   //           color: Colors.black,
//                   //         ),
//                   //     buttonPosition: RadioButtonPosition.left,
//                   //     direction: Axis.vertical,
//                   //     radioButtonColor: Colors.blue,
//                   //     inactiveRadioButtonColor: Color(0x8A000000),
//                   //     toggleable: false,
//                   //     horizontalAlignment: WrapAlignment.start,
//                   //     verticalAlignment: WrapCrossAlignment.start,
//                   //   ),
//                   // ),
//                   Align(
//                     alignment: AlignmentDirectional(0.88, 0.56),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController2,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                       ),
//                     ),
//                   ),
//                   // Align(
//                   //   alignment: AlignmentDirectional(0.72, 0.29),
//                   //   child: FlutterFlowRadioButton(
//                   //     options: ['NO'],
//                   //     onChanged: (value) {
//                   //       setState(() => radioButtonValue3 = value);
//                   //     },
//                   //     optionHeight: 35,
//                   //     textStyle: TextStyle(
//                   //           fontFamily: 'Poppins',
//                   //           color: Colors.black,
//                   //         ),
//                   //     buttonPosition: RadioButtonPosition.left,
//                   //     direction: Axis.vertical,
//                   //     radioButtonColor: Colors.blue,
//                   //     inactiveRadioButtonColor: Color(0x8A000000),
//                   //     toggleable: false,
//                   //     horizontalAlignment: WrapAlignment.start,
//                   //     verticalAlignment: WrapCrossAlignment.start,
//                   //   ),
//                   // ),
//                   Align(
//                     alignment: AlignmentDirectional(0.88, 0.18),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController3,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                         keyboardType: TextInputType.datetime,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0.92, -0.94),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 60),
//                       child: TextFormField(
//                         // controller: textController4,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.black,
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0.96, -0.7),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController5,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                         keyboardType: TextInputType.streetAddress,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(1.12, -0.57),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController6,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                         keyboardType: TextInputType.phone,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0.84, -0.42),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController7,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(1.13, -0.3),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController8,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: AlignmentDirectional(0.74, -0.16),
//                     child: Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(180, 0, 5, 40),
//                       child: TextFormField(
//                         // controller: textController9,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           isDense: true,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           contentPadding:
//                               EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.black,
//                           fontSize: 14,
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 2,
//                         keyboardType: TextInputType.number,
//                       ),
//                     ),
//                   ),
//                   // Align(
//                   //   alignment: AlignmentDirectional(0.88, -0.05),
//                   //   child: FlutterFlowRadioButton(
//                   //     options: ['Female'],
//                   //     onChanged: (value) {
//                   //       setState(() => radioButtonValue4 = value);
//                   //     },
//                   //     optionHeight: 35,
//                   //     textStyle: TextStyle(
//                   //           fontFamily: 'Poppins',
//                   //           color: Colors.black,
//                   //         ),
//                   //     buttonPosition: RadioButtonPosition.left,
//                   //     direction: Axis.vertical,
//                   //     radioButtonColor: Colors.blue,
//                   //     inactiveRadioButtonColor: Color(0x8A000000),
//                   //     toggleable: false,
//                   //     horizontalAlignment: WrapAlignment.start,
//                   //     verticalAlignment: WrapCrossAlignment.start,
//                   //   ),
//                   // ),
//                 ],
              

//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Full Name",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Address",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               // Padding(
//               //   padding: const EdgeInsets.symmetric(
//               //     vertical: 16.0,
//               //   ),
//               //   child: TextFormField(
//               //     decoration: InputDecoration(
//               //       hintText: "Enter Full Name",
//               //     ),
//               //     // The validator receives the text that the user has entered.
//               //     validator: (value) {
//               //       if (value == null || value.isEmpty) {
//               //         return 'Please enter your name';
//               //       }
//               //       return null;
//               //     },
//               //   ),
//               // ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     // keyboardType: TextInputType.phone,
//                     hintText: "Mobile number",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter mobile number';
//                     }
//                     return null;
//                   },
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Department",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter name of the department';
//                     }
//                     return null;
//                   },
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Blood Group",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please select the blood grp';
//                     }
//                     return null;
//                   },
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Age",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the age';
//                     }
//                     return null;
//                   },
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Last time blood donated",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Suffering from any disease?",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   // validator: (value) {
//                   //   if (value == null || value.isEmpty) {
//                   //     return 'Please enter ';
//                   //   }
//                   //   return null;
//                   // },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Which disease",
//                   ),
//                   // The validator receives the text that the user has entered.
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter mobile number';
//                     }
//                     return null;
//                   },
//                 ),
//               ),

//               // padding: const EdgeInsets.symmetric(vertical: 20.0),
//               ElevatedButton(
//                 onPressed: () {
//                   // Validate returns true if the form is valid, or false otherwise.
//                   if (_formKey.currentState!.validate()) {
//                     // If the form is valid, display a snackbar. In the real world,
//                     // you'd often call a server or save the information in a database.
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text('Processing Data')),
//                     );
//                   }
//                 },
//                 child: const Text('Submit'),
//               ),
//             ],
//           ),
//         ),

//       // children: [

//       // ],
//               )
//                 ),
//           ],
//         ),
//         ),
//             );
//   }
// }
