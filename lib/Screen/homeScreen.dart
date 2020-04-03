import 'package:flutter/material.dart';
import 'package:bottompackage/Screen/navbar_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Text("sdsd"),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: BottomPlayer(),
          )
        ],
      ),

    );
  }
}
