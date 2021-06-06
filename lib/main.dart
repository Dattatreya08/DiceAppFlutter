import 'package:flutter/material.dart';
import 'package:dice_app/screens/roll.dart';
void main(){
  runApp(MaterialApp(
    title: "Dice",
    debugShowCheckedModeBanner: false,
    home: Dice(),
  )
  );
}