import 'package:flutter/material.dart';



class IntroCard extends StatelessWidget {
  IntroCard({
    this.name,
    this.imageurl,
    this.funfact,
    this.holidaystuff
  });

  final String name;
  final String imageurl;
  final String funfact;
  final String holidaystuff;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.black12,
            offset: Offset(0.0, 5.0)
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Image.network(
              imageurl,
              height: 180,
              width: 180,
              fit: BoxFit.cover
              ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
            ),
          ),
          Text(
            funfact,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 12.0,
            )
          ),
          Text(
            holidaystuff,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 12.0,
            )
          )
        ],
      )
    );
  }
}