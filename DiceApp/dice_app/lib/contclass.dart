import 'package:flutter/material.dart';
import 'package:dice_app/dice_roll.dart';

class ContClass extends StatelessWidget {
  const ContClass(this.c1, this.c2, this.c3, this.altopCen, this.albotCen,
      {super.key});
  //named constructor defination

  const ContClass.india(this.c1, this.c2, this.c3, this.altopCen, this.albotCen,
      {super.key});
//variable declarations
  final Color c1;
  final Color c2;
  final Color c3;
  final Alignment altopCen;
  final Alignment albotCen;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [c1, c2, c3],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
