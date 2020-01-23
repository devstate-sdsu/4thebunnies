import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  AppCard({
    this.name,
    this.funfact,
    this.holiday,
    this.image,
  });

  final String name;
  final String funfact;
  final String holiday;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(8.0),
      height: 280,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipOval(
            child: Image.network(
              image,    // the URL of the image
              height: 180,
              fit: BoxFit.cover
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            )
          ),
          Text(
          funfact,
          maxLines: 2,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black38
            )
          ),
          Text(
          holiday,
          maxLines: 2,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black38
            )
          )
        ],
      )
    );
  }
} 


