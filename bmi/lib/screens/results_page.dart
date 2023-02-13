// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'package:bmi/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),
                  style: resultTextStyle,
                ),
                  Text(bmiResult,
                  style: kBMITextStyle,
                ),
                Text(
                  interpretation,
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                )
                ],
              ),
            ),
          ),
          BottomButton(
            textButton: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
}
