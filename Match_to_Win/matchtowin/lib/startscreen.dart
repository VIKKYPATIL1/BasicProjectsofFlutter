import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //constructor function recieving one positional and one named argument
  const StartScreen(this.startgame, {super.key});
  //recieved postional argument store in this varible
  final Function() startgame;

  //overided method of class StartScreen Because Extended to Stateless Widget
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Welcome to Match to Win !',
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 196, 228, 11),
            backgroundColor: Color.fromARGB(40, 168, 9, 248),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/images/A1005.png',
          width: 355,
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          //function which recieve from Apphome class using constructor
          //is passed here to onpress of button
          onPressed: startgame,
          style: TextButton.styleFrom(
              foregroundColor: (const Color.fromARGB(255, 196, 228, 11)),
              shape: const StadiumBorder()),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Game',
            style: TextStyle(fontSize: 28),
          ),
        )
      ],
    );
  }
}
