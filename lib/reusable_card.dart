import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;
  ReusableCard(@required this.color, this.cardChild,this.onPress);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 5),
      onPressed: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
        decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

}