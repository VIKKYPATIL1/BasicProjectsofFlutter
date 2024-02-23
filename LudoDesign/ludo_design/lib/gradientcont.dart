import 'package:flutter/material.dart';
import 'package:ludo_design/changedice.dart';

class GradientCont extends StatelessWidget {
  const GradientCont(this.c1, this.c2, {super.key});
  final Color c1;
  final Color c2;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [c1, c2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: const Center(
          child: ChangeDice(),
        ));
  }
}
