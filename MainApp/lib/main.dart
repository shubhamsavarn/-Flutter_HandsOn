import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Center
          (child: Text("Hello")),
        backgroundColor: Colors.brown[900],
      ),
      body:Center(
        child: Image(
          image: NetworkImage('https://cms.battleon.com/aqw/images/Mage-web.png'),
        ),
      ),
     


      ),
    ),
  ));
}