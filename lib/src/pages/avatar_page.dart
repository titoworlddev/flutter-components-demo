import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text( 'Avatar Page' ),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://kabina34radio.com/wp-content/uploads/2019/05/URnaMrya.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.radiocantilo.com/wp-content/uploads/2018/11/STANNN.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration( milliseconds: 200 ),
          
        ),
      ),
    );

  }
}