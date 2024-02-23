import 'dart:math';
import 'package:flutter/material.dart';
import 'package:matchtowin/apphome.dart';
import 'package:matchtowin/finalscore.dart';

//variable declaration for images number
int player1number = 100;
int player2number = 101;

//main class stateful widget class
class Cardshuffle extends StatefulWidget {
  const Cardshuffle({super.key});

  @override
  State<Cardshuffle> createState() {
    return _CardshuffleState();
  }
}

//class for card shuffle
class _CardshuffleState extends State<Cardshuffle> {
  //variable declaration active state store Card Shuffle As current Widget in it
  Widget activeState = const Cardshuffle();

  //variable declaration for monitoring score of players
  double counter1 = 0;
  double counter2 = 0;

  //variable declaration for replacing initState
  //and use String to compare current State and changes
  //this variable monitor the states between ScoreScreen And Restart Screen
  var current1 = 'Score Screen';

  //Switching between ScoreScreen And Restart Screen
  void restartSwitch() {
    setState(() {
      current1 = 'restartscreen';
    });
  }
  //.......................................

  //variable declaration for replacing initState
  //and use String to compare current State and changes
  //this variable monitor the states between card Screen And ScoreScreen
  var current = 'cardscreen';

  //switching between card screen and score screen using switch screen method
  void switchScreen() {
    setState(() {
      current = 'Score Screen';
      //here we passing 3 positional paramenter
      //one is restartSwitch method other two are counter variable
      activeState = FinalScore(restartSwitch, counter1, counter2);
    });
  }
  //till this line code is for switch screen
  //.......................................

  final randomGenerator = Random();

//Button 1 code
  //this button change card as well as increase or decrease
  //counter variable for updating score for player 1
  void button1() {
    setState(() {
      player1number = randomGenerator.nextInt(52) + 1;
      if (player1number == player2number) {
        player1number = 1003;
        player2number = 1002;
        counter2 -= counter1 * 0.1;
      }
      counter1++;
    });
  }

//Button 2 code
  //this button change card as well as increase or decrease
  //counter variable for updating score for player 2
  void button2() {
    setState(() {
      player2number = randomGenerator.nextInt(52) + 1;
      if (player2number == player1number) {
        player2number = 1004;
        player1number = 1002;
        counter1 -= counter2 * 0.1;
      }
      counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget restartState = FinalScore(restartSwitch, counter1, counter2);
    //here current1 is update if button restartSwitch is pressed or execute
    //current 1==restartscreen will update Widget to Apphome directly
    //and game restarted
    if (current1 == 'restartscreen') {
      restartState = const Apphome();
    }

    //..................
    //if else is used to display output conditionally
    //example if current is cardscreen string then it
    //will display card screen widgets
    //else score screen
    //....................
    //condion for returning widget
    //if current is cardscreen return cardscreen widget tree
    if (current == 'cardscreen') {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Let's Play the Game..",
            style: TextStyle(
                fontSize: 35, color: Color.fromARGB(255, 225, 250, 0)),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: button1,
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromRGBO(1, 1, 253, 1),
                backgroundColor: const Color.fromARGB(189, 192, 101, 225),
                padding: const EdgeInsets.all(25),
                shape: const StadiumBorder()),
            child: const Text(
              'Player 1',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/images/A$player1number.png',
              width: 170,
            ),
            const SizedBox(
              width: 30,
            ),
            Image.asset(
              'assets/images/A$player2number.png',
              width: 170,
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: button2,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromRGBO(1, 1, 253, 1),
              backgroundColor: const Color.fromARGB(189, 192, 101, 225),
              padding: const EdgeInsets.all(25),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Player 2',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 200,
              ),
              TextButton.icon(
                //here switchscreen function is passed
                onPressed: switchScreen,
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromRGBO(1, 1, 253, 1),
                  backgroundColor: const Color.fromARGB(189, 192, 101, 225),
                  padding: const EdgeInsets.all(5),
                  shape: const StadiumBorder(),
                ),
                icon: const Icon(Icons.score),
                label: const Text(
                  'final Score',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      );
    }
    //if current!=cardscreen it is = Score Screen
    else {
      return Container(
        child: restartState,
      );
    }
  }
}
