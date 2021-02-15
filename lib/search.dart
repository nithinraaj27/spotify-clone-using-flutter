import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Search extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [
        Color(0xFF414345),
        Color(0xFF000000),
        ],
    begin: Alignment.topLeft,
    end: FractionalOffset(0.2,0.7)
    ),
    ),
    child: ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(30.0),),
              Container(
                child: Text('Search',
                 style: TextStyle(
                   color: Colors.white.withOpacity(1.0),
                   fontSize: 50.0,
                 ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 50.0,
                  width: 380.0,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(left:40),),
                      Icon(Icons.search,color: Colors.black),
                      Padding(padding: EdgeInsets.all(5),),
                      Text('Artists,',style: TextStyle(color: Colors.black,fontSize: 20.0),),
                      Text(' Songs or',style: TextStyle(color: Colors.black,fontSize: 20.0),),
                      Text(' Podcasts',style: TextStyle(color: Colors.black,fontSize: 20.0),),

                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your top generes, ",
                      style: TextStyle(fontSize: 20.0),
                      ),
                      GridView.builder(
                          itemCount: 3,
                          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          shrinkWrap: true,
                          controller: ScrollController(keepScrollOffset: false),
                          itemBuilder: (BuildContext context,int index){
                            return GridTile(
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Card(
                                    margin: EdgeInsets.symmetric(vertical: 16.0),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset('assets/gener.jpg'),
                                  ),
                                ),
                            );
                          },
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}