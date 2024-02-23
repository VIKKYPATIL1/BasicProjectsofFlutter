import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(236, 248, 4, 4),
          Color.fromARGB(225, 25, 235, 217),
          Color.fromARGB(255, 255, 7, 255)
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          'hello',
          style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
