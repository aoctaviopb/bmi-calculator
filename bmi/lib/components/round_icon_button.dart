import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  @override
  RoundIconButton({required this.icon, required this.onPress});

  final IconData icon;
  final void Function() onPress;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: BoxConstraints(
        minWidth: 56.0,
        minHeight: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
