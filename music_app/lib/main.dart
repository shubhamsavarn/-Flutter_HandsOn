import 'package:flutter/material.dart';

void main() {
  runApp(MusicPlayer());
}

class MusicPlayer extends StatefulWidget {

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  String PlayPause = 'SONG IS PAUSED!';
  IconData playPauseIcon = Icons.play_circle_filled;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music-App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Text('My Player',style: TextStyle(
            fontSize: 40,

          ),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                PlayPause,

                style: TextStyle(
                    fontFamily: 'Reggae One',
                    fontSize: 40,
                    color: Colors.white),
              ),
              Divider(
                height: 10,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){

                    },
                    child: Icon(
                    Icons.skip_previous_outlined,size: 50,
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        if( playPauseIcon==Icons.play_circle_filled ){
                          playPauseIcon = Icons.pause_circle_filled;
                          PlayPause = 'SONG IS PLAYING!';
                        } else if (playPauseIcon==Icons.pause_circle_filled){
                          playPauseIcon = Icons.play_circle_filled;
                          PlayPause = 'SONG IS  PAUSED!';
                        }
                      });

                    },

                    child: Icon(
                      playPauseIcon,size: 50,
                    ),
                  ),
                  Icon(
                    Icons.skip_next_outlined,size: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}







