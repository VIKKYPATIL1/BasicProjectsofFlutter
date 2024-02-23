import 'package:flutter/material.dart';
import 'package:matchtowin/cardshuffle.dart';
import 'package:matchtowin/startscreen.dart';

//Stateless Widget Class because The screen change from the
//start Screen to Card Screen
class Apphome extends StatefulWidget {
  const Apphome({super.key});
  @override
  State<Apphome> createState() {
    return _ApphomeState();
  }
}

//private class within this file because of underscore before class name
class _ApphomeState extends State<Apphome> {
//variable declaration for replacing init method implementation
//and using String to checking which is current state
  var activeState = 'Start Screen';

//Switch screen method for button present in start screen class
//which is extended to stateless widget
  void switchScreen() {
    setState(() {
      activeState = 'Game Screen';
    });
  }

//overided build method because extended to State<Apphome>
  @override
  Widget build(BuildContext context) {
    //varible declaration and ternary expression to check
    //which screen is to be lift
    //ternary expression
    /*
    Widget currentState==
    activeState='StartScreen'?
    StartScreen(switchScreen):Cardshuffle()
    */

    Widget currentState = StartScreen(switchScreen);
    //using if statement changing the state widget or updating the
    //widget variable
    if (activeState == 'Game Screen') {
      currentState = const Cardshuffle();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 208, 0, 255),
              Color.fromARGB(252, 161, 94, 234)
            ], begin: Alignment.topLeft, end: Alignment.topLeft),
          ),
          child: Center(
            //if condition is true then value pass here is Cardshuffle
            //else StartScreen
            child: currentState,
          ),
        ),
      ),
    );
  }
}
