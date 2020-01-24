import 'package:flutter/material.dart';


// First we need to 'import' the 'IntroCard' widget from another file, in this case, 'card.dart'!
// The "thebunnies" is the name of the app, and this by default routes to lib/ folder"
import 'package:thebunnies/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the app.
  @override
  Widget build(BuildContext context) {
    // This MyApp 'widget' returns a widget called 'MaterialApp' that provides the fundamental skeleton/layout of a phone 'app'.
    return MaterialApp(

      // The name of the app itself!
      title: 'Flutter Demo',

      // Prevent the red 'debug' banner from showing in the app. (personal pet peeve)
      debugShowCheckedModeBanner: false,

      // The app's 'theme'.
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // This actually calls our 'homescreen' widget that is defined below. 
      // Because it is part of the MaterialApp's 'home' property, it is automatically
      // called when the app is run - in other words, it is the first thing that is 'shown' to users.
      home: HomeScreen()
    );
  }
}


// This is the definition of the 'HomeScreen' widget!
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // A scaffold widget provides a 'skeleton' of what an Android app looks like. Inside this widget,
    // you can set an appBar, a title, backgroundColor, the 'body' of the app (that won't be covered
    // by the appBar, etc.)    TIP: in VSCode, hover over the widgets to see its full list of properties
    // (or you can go online to check on the Flutter website!)
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bunnies Den",
          style: TextStyle(
            color: Colors.white
          )
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,

      // In Flutter, everything is a widget, and so you can put widgets... inside a widget... inside another widget.
      // Below, you can see that I'm putting the card widgets inside the 'listview'... which is inside the 'scaffold'.
      // The ListView widget is similar to a 'Column' widget but allows the user to 'scroll' when the contents inside 
      // can't fit inside the screen.
      body: ListView(
        children: <Widget>[
          IntroCard(
            name: "Hafidh!",
            imageurl: "http://img1.wikia.nocookie.net/__cb20121115114124/adventuretimewithfinnandjake/images/2/22/Gunter_in_Sign.png",
            funfact: "I like stuff!",
            holidaystuff: "I went to Denver to see the lights! Yeet!",
          ),
          IntroCard(
            name: "Salaar Ahmad",
            imageurl: "https://i.imgur.com/WMRTOGU.png",
            funfact: "Am a loser",
            holidaystuff: "I went to Pakistan.",
          )
        ],
      )
    );
  }
}












