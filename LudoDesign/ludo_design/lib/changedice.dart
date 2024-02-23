import 'dart:math';

import 'package:flutter/material.dart';

class ChangeDice extends StatefulWidget {
  const ChangeDice({super.key});
  @override
  State<ChangeDice> createState() {
    return _ChangeDiceState();
  }
}

String rollDice = 'Roll Dice';
final randomNumber = Random();

class _ChangeDiceState extends State<ChangeDice> {
  int? frNumber1 = 1;
  int? frNumber2 = 1;
  int? frNumber3 = 1;
  int? frNumber4 = 1;
  //Face Changing method
  void changeFace1() {
    setState(() {
      frNumber1 = randomNumber.nextInt(6) + 1;
    });
  }

  void changeFace2() {
    setState(() {
      frNumber2 = randomNumber.nextInt(6) + 1;
    });
  }

  void changeFace3() {
    setState(() {
      frNumber3 = randomNumber.nextInt(6) + 1;
    });
  }

  void changeFace4() {
    setState(() {
      frNumber4 = randomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              //player 1..
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      foregroundColor: const Color.fromARGB(255, 255, 0, 0),
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: changeFace1,
                  child: Text(rollDice),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/images/f-$frNumber1.png',
                  width: 80,
                ),
              ],
            ),
            const SizedBox(
              width: 150,
            ),
            Column(
              //player 2..
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      foregroundColor: const Color.fromARGB(255, 255, 0, 0),
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: changeFace2,
                  child: Text(rollDice),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/images/f2-$frNumber2.png',
                  width: 80,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        //ludo table image
        Image.asset(
          'assets/images/ludo.jpg',
          width: 300,
          height: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              //player 3..
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/f3-$frNumber3.png',
                  width: 80,
                ),
                const SizedBox(
                  height: 15,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      foregroundColor: const Color.fromARGB(255, 255, 0, 0),
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: changeFace3,
                  child: Text(rollDice),
                ),
              ],
            ),
            const SizedBox(
              width: 150,
            ),
            Column(
              //player 4
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/f4-$frNumber4.png',
                  width: 80,
                ),
                const SizedBox(
                  height: 15,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      foregroundColor: const Color.fromARGB(255, 255, 0, 0),
                      textStyle: const TextStyle(fontSize: 20)),
                  onPressed: changeFace4,
                  child: Text(rollDice),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
