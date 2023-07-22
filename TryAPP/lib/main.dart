import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      color: Colors.brown,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Image(image: AssetImage('lib/images/train.jpg')),
              Container(
                padding:EdgeInsets.symmetric(horizontal: 30,vertical: 30) ,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Heading',style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 8,),
                          Text('Subheading',style:TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          )),
                        ],
                      ),
                    ),
                    Icon(Icons.star,color:Colors.red,),
                    Text('34')
                  ],
                ),
              ),
              Container(
                child:  Container(
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.call_outlined,
                            color: Colors.lightBlueAccent,
                            size: 42,
                          ),
                          SizedBox(height: 10,),
                          Text('CALL',
                            style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.near_me_outlined, color: Colors.lightBlueAccent,
                            size: 42,
                          ),
                          SizedBox(height: 10,),
                          Text('Route',style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share_outlined,
                            color: Colors.lightBlueAccent,
                            size: 42,
                          ),
                          SizedBox(height: 10,),
                          Text('SHARE',style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                    ],
                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                child: Text('Hello'),
              )
            ],
          )
        ),


      ),
    );
  }
}
