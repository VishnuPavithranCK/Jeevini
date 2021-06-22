import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Card(
           shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),),
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.7),
          child:Container(
            padding: EdgeInsets.all(8.0),
            height: 120,
            width: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  padding: EdgeInsets.all(20),
                  child:Icon(Icons.favorite_border_outlined,size: 30,)),
                SizedBox(width:10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text('hello'),
                      Text('hello'),
                        Text('hello')
                  ]
                )
              ]
            ),
          )
        );
  }
}