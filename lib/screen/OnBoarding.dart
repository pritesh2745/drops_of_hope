// ignore_for_file: avoid_unnecessary_containers

import 'package:app1/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatefulWidget {
  String userName;
  OnboardingScreen(this.userName);
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState(userName);
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String userName;
  _OnboardingScreenState(this.userName);
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () => print('Skip'),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 600.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                              child: Lottie.asset(
                                  "assets/animations/lf30_editor_mp69mxjw.json",
                                  repeat: false,
                                  height: 300)),
                          SizedBox(height: 30.0),
                          SingleChildScrollView(
                            child: Column(
                              children: const [
                                Text('Time saving',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                    )),
                                SizedBox(height: 15.0),
                                Text(
                                  'Encourage your friends and family to become regular blood donors. Volunteer with the blood service to reach out to members of your community, provide care to donors, and help manage blood donation sessions/drives.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                              child: Lottie.asset(
                                  "assets/animations/61076-blood-tube-test.json",
                                  repeat: false,
                                  height: 300)),
                          SizedBox(height: 30.0),
                          Text(
                            'Live your life smarter\nwith us!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Digital platform for collecting donations to be distributed to people in need we build strength stability and self relience',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage(
                                'assets/images/19259.jpg',
                              ),
                              height: 300.0,
                              width: 300.0,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Get a new experience of imagination',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Here we propose a new and efficient way to overcome such outline.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: FlatButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Home(userName)));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Move to HomePage',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
