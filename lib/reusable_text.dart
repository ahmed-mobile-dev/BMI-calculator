import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;

  ReusableText({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold,),
    ));
  }
}
