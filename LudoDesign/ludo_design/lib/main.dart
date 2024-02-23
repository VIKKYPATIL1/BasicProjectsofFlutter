import 'package:flutter/material.dart';
import 'package:ludo_design/gradientcont.dart';

const Color c1 = Color.fromARGB(255, 12, 218, 197);
const Color c2 = Color.fromARGB(165, 12, 218, 197);
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientCont(c1, c2)),
    ),
  );
}
