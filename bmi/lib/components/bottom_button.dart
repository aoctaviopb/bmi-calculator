import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class BottomButton extends StatelessWidget {
  @override

  BottomButton({required this.textButton, required this.onTap});

  final String textButton;
  final void Function() onTap;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        //width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            textButton,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
