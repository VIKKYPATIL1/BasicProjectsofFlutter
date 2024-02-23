import 'package:flutter/material.dart';
import 'dart:math';

final randomgenerator = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

//private class within this file using uderscore _
class _DiceRollState extends State<DiceRoll> {
  int? currentdicenumber;
  //onpressed text button method
  void rundice() {
    setState(() {
      currentdicenumber = randomgenerator.nextInt(6) + 1;
    });
  }

  //overrided build method
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdicenumber.png',
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 40,
          width: 10,
        ),
        TextButton(
          onPressed: rundice,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              textStyle: const TextStyle(fontSize: 32)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
