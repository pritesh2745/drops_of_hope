
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  // const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
        title: Text(
          'Blood  Request',
          style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color.fromARGB(255, 153, 154, 126),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.74, -0.34),
                child: Text(
                  'Recent Updates',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, 0.79),
                child: Text(
                  '24   MALE ',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, 0.89),
                child: Text(
                  '24   MALE ',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, 0.88),
                child: Container(
                  width: 300,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, 0.78),
                child: Text(
                  '24   MALE ',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.03, 0.37),
                child: Text(
                  '24   MALE ',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, 0.38),
                child: Container(
                  width: 300,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.06, -0.12),
                child: Container(
                  width: 300,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(10, 25, 196, 10),
                        child: Image.asset(
                          "assests/images/hey.png",
                          width: 75,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                           EdgeInsets.fromLTRB(10, 25, 196, 10),
                        child: Image.asset(
                  "assests/images/hey.png",
                          width: 75,
                          height: 90,
                          fit: BoxFit.cover, 
                        ),
                      ),
                      Padding(
                        padding:
                          EdgeInsets.fromLTRB(10, 25, 196, 10),
                        child: Image.asset(
                           "assests/images/hey.png",
                          width: 75,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, 0.38),
                child: Text(
                  '24   MALE ',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.2, 0.3),
                child: Text(
                  'Kathey Bates',
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, -0.06),
                child: Text(
                  '24   MALE ',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.17, -0.14),
                child: Text(
                  'Kathey Bates',
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, -0.84),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Container(
                    width: 300,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, -0.74),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 0, 55, 0),
                  child: Text(
                    '        291                     481\nAvailable          Request',
                    style:TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 21,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.17, 0.71),
                child: Text(
                  'Kathey Bates',
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.75, -0.35),
                child: Text(
                  'View All',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
