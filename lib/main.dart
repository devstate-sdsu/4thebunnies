import 'package:flutter/material.dart';

// We are importing the 'card' widget from this file!
import 'widgets/card.dart';


// In Flutter, this 'main.dart' file is always run first. Then, 
void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contet) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I<3Bunnies!")
      ),
      body: ListView(
        children: <Widget>[
          AppCard(
            name: "Hafidh!",
            funfact: "I love this donut called an 'Oreology' I swear it's really good.",
            holiday: "I went to see the lights in Denver! Yeet!",   
            image: "http://img1.wikia.nocookie.net/__cb20121115114124/adventuretimewithfinnandjake/images/2/22/Gunter_in_Sign.png",       
          ),
        ]
      )
    );
  }
}
