import 'dart:io';

import 'package:flutter/material.dart';

//stateless widget because changing from score screen to home screen
class FinalScore extends StatelessWidget {
  const FinalScore(this.restartSwitch, this.score1, this.score2, {super.key});
  final double score1;
  final double score2;
  final Function() restartSwitch;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Player 1 score is $score1',
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.amberAccent,
              fontSize: 38,
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Player 2 score is $score2',
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.amberAccent,
              fontSize: 38,
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 100,
        ),
        TextButton.icon(
            onPressed: restartSwitch,
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(81, 123, 0, 254),
                shape: const StadiumBorder(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10)),
            icon: const Icon(Icons.restart_alt_outlined),
            label: const Text(
              "restart",
              style: TextStyle(fontSize: 20),
            )),
        const SizedBox(
          height: 20,
        ),
        TextButton.icon(
            onPressed: () {
              exit(15);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(81, 123, 0, 254),
                shape: const StadiumBorder(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10)),
            icon: const Icon(Icons.exit_to_app),
            label: const Text(
              "Exit",
              style: TextStyle(fontSize: 20),
            )),
      ],
    );
  }
}
