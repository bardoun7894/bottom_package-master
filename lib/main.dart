import 'package:flutter/material.dart';
import 'package:bottompackage/Screen/player_screen.dart';
import 'package:bottompackage/Screen/homeScreen.dart';

void main() {
  runApp( Nova());
}

class Nova extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      home:PlayerScreen(),
    );
  }
}
//