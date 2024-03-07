import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll_1 = randomizer.nextInt(6) + 1;
  var currentDiceRoll_2 = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceRoll_1 = randomizer.nextInt(6) + 1;
      currentDiceRoll_2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(flex: 5),
        Image.asset(
          'assets/images/dice$currentDiceRoll_1.jpg',
          width: 125,
        ),
        const Spacer(flex: 1),
        Image.asset(
          'assets/images/dice$currentDiceRoll_2.jpg',
          width: 125,
        ),
        const Spacer(flex: 5),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            shadowColor: Colors.black26,
            backgroundColor: Color.fromARGB(255, 92, 2, 2),
            textStyle: const TextStyle(
              fontSize: 28,
              color: Colors.white12,
            ),
          
          ),
          child: const Text('Roll Dice'),
        ),
        const Spacer(flex: 5)
      ],
    );
  }
}