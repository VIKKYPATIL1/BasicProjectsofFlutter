import 'package:dice_app/contclass.dart';
import 'package:flutter/material.dart';

//variable declarations
const Color c1 = Color.fromARGB(244, 4, 255, 213);
const Color c2 = Color.fromARGB(157, 7, 171, 241);
const Color c3 = Color.fromARGB(112, 138, 248, 3);
const Alignment atc = Alignment.topCenter;
const Alignment abc = Alignment.bottomCenter;
//driver function
void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: ContClass(c1, c2, c3, atc, abc),
  )));
}
