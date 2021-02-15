import 'dart:ui';

import 'package:flutter/material.dart';
class MainPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(40, 96, 65, 7.0),
              Color(0xFF191414),
            ],
             begin: Alignment.topLeft,
             end: FractionalOffset(0.3,0.3)
        ),
      ),

      child: ListView(
        children: [
          SingleChildScrollView(
             scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Container(
                  padding: EdgeInsets.all(20.0),
                  height : 250.0,
                  child: ListView(
                    children: <Widget>[
                      Text("Recently Played",style: TextStyle(color: Colors.white.withOpacity(1.0),
                      fontSize: 23.0,
                      ),),
                      Padding(padding: EdgeInsets.all(10.0),),
                      Container(
                        height: 165.0,
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context,int index){
                            return Column(
                              children:  [
                                SizedBox(
                                  height: 150.0,
                                  width: 150.0,
                                  child: Image.asset(
                                    'assets/ani.jpg',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                        height: 300.0,
                        child: Column(
                          children: <Widget> [
                            Text(
                                "Made for you",style: TextStyle(color: Colors.white.withOpacity(1.0),
                                 fontSize: 23.0,
                             ),),
                            SizedBox(
                              height: 210.0,
                              width: 210.0,
                              child: Image.asset('assets/BIG.jpg',fit: BoxFit.fill,),
                            ),
                            Text("Songs you loved this year,\n all wrapped up",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12.5,
                            ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  height : 250.0,
                  child: ListView(
                    children: <Widget>[
                      Text("Recomandation",style: TextStyle(color: Colors.white.withOpacity(1.0),
                        fontSize: 23.0,
                      ),),
                      Padding(padding: EdgeInsets.all(10.0),),
                      Container(
                        height: 165.0,
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context,int index){
                            return Column(
                              children:  [
                                SizedBox(
                                  height: 150.0,
                                  width: 150.0,
                                  child: Image.asset(
                                    imageurl[index],
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                  ),
                ),
              ],
            ),
          );
  }
}
List<String> imageurl = [
  'assets/hht.jpg',
  'assets/rehman.jpg',
  'assets/u1.jpg',
  'assets/sid.jpg',
  'assets/hht.jpg',
  'assets/rehman.jpg',
  'assets/u1.jpg',
  'assets/sid.jpg',
];
