import 'package:flutter/material.dart';
import 'player_screen.dart';

class BottomPlayer extends StatefulWidget {
  @override
  _BottomPlayerState createState() => _BottomPlayerState();
}

class _BottomPlayerState extends State<BottomPlayer> {

  static bool favourited = true;
  static bool playing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/playerscreen');

              },
              child: Icon(
                favourited ? Icons.favorite : Icons.favorite_border,
                size: 30.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/playerscreen');
              },
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'the best on what you can hear in your life .... ',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          ' Uknown Sheikh ',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  playing = !playing;
                });
              },
              child: Icon(
                playing
                    ? Icons.play_circle_outline
                    : Icons.pause_circle_outline,
                size: 35.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
