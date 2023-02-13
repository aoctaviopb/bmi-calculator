// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:bmi/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21), 
        colorScheme: ColorScheme.light().copyWith(
          primary: Color(0xFF0A0E21),
        ),
      ),
      home: InputPage(),
    );
  }
}



/*

      theme: ThemeData(
        //primaryColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF0A0E21),
          secondary: Color(0xFF0A0E21),
          ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(bodyColor: Colors.white),
      ),

      */