import 'package:flutter/material.dart';
import 'dart:math';

final randomizer=Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRoller();
  }
}



class _DiceRoller extends State<DiceRoller>{

  var currentDiceRoll=2;

  void rollDice(){
    setState(() {
       currentDiceRoll=randomizer.nextInt(6)+1;
    }
    );
  }

  @override
  Widget build(context) {
     return Column(
         mainAxisSize: MainAxisSize.min,
         children: [

           Image.asset(
             'assets/dice-$currentDiceRoll.png',
             width: 200,
           ),

           TextButton(
               onPressed:rollDice,

               style: TextButton.styleFrom(
                   padding: const EdgeInsets.only(top:10),

                   textStyle: const TextStyle(
                     fontSize: 20,

                   )
               ),

               child:const  Text('Roll Dice'))
         ]
     );
  }

}
