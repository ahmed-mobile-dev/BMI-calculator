import 'package:flutter/material.dart';
import 'constants.dart';
class ReusableColum extends StatelessWidget {
  final IconData icon;
  final String text;

  ReusableColum({@required this.icon,this.text});


  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            icon,
            size: 80,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Center(
          child: Text(
            text,
            style: kLebelTextStyle,
          ),
        ),
      ],
    );
  }
}