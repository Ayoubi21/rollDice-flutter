import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dice_roller.dart';

class PageGradient extends StatelessWidget{
  const PageGradient({super.key});


  @override
  Widget build(BuildContext context) {
   return Container(

     //style container
    decoration: const BoxDecoration(
      color: Colors.green,
    ),
      child:const Center(
      child: DiceRoller(),
      )

   );
  }
}