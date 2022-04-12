import 'package:app1/screen/homepage1.dart';
import 'package:app1/screen/homepage2p.dart';
import 'package:app1/screen/homepage3.dart';
import 'package:app1/screen/homepage4.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String userName;
  Home(this.userName);
  @override
  _HomeState createState() => _HomeState(userName);
}

class _HomeState extends State<Home> {
  String userName;
  _HomeState(this.userName);
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(child: GridofDonor(userName)),
          Container(child: DonorDetailsWidget()),
          Container(child: HomePageWidget()),
          Container(child: HomePageWidget1(userName),
// child: Profile(),
              ),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        showActiveBackgroundColor: true,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Request'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('survey form'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
