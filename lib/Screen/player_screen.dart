import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  static bool favourited = true;
  static bool playing = false;
  static bool active = false;
  var time = 59.0;
  int currentTime = 0;
  var currentSec = 59;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            color: Colors.white,
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.grey[400],
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[700],
                              child: Icon(
                                Icons.music_note,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "AUD-20200326-WA0028",
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                              ),
                              SizedBox(),
                              Text("Unknown artist",style: TextStyle(color: Colors.black),)
                            ],
                          ),

                        ),

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.queue_music,color: Colors.black,),
                        Icon(Icons.more_vert,color: Colors.grey[800],size: 40,)
                      ],
                    )

                  ],
                ),

              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: <Widget>[

           Container(
                height: MediaQuery.of(context).size.height*.68,
                width:MediaQuery.of(context).size.width,
                color: Colors.grey[400],
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Container(
                          height:MediaQuery.of(context).size.width*.9,
                          width:MediaQuery.of(context).size.width*.9,
                          decoration:BoxDecoration(
                              color: Colors.grey[600],
                              borderRadius: BorderRadius.circular(300)
                          ),

                          child: Icon(
                            Icons.music_note,
                            color: Colors.white,size: 150,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.shuffle,color: Colors.white),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              active = !active;
                            });
                          },
                          child: Icon(
                            Icons.repeat,
                            color: active ? Colors.orange : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


Column(
  children: <Widget>[
    Slider(

      onChanged: (newTime) {
        setState(() {
          time = newTime;
          currentSec = time.toInt() % 60;
          currentTime = time ~/ 60.0;
        });
      },
      value: time,
      min: 0,
      max: 129,
      inactiveColor: Colors.white,
      activeColor: Colors.deepOrange,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('$currentTime:$currentSec',style: TextStyle(color:Colors.black),),
          Text('2:09',style: TextStyle(color:Colors.black))
        ],
      ),
    ),
  ],
)
           ,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.favorite, color: Colors.black,),
                        Icon(
                          Icons.skip_previous,
                          size: 40.0,
                          color: Colors.black,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              playing = !playing;
                            });
                          },
                          child: Icon(
                            playing
                                ? Icons.play_circle_filled
                                : Icons.pause_circle_filled,
                            color: Colors.deepOrange,
                            size: 60.0,


                          ),
                        ),
                        Icon(
                          Icons.skip_next,
                          size: 40.0,
                          color: Colors.black,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              active = !active;
                            });
                          },
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
        ));
  }
}
