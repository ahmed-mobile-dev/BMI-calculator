import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'reusable_text.dart';
import 'reusable_card.dart';
import 'constants.dart';

class unit_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("المتابعة الزمنية لتحول كميائي")),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor,
                  ReusableText(text:  "ملخص الوحدة الأولى",) ,
                      (){

                  launch("https://www.youtube.com/watch?v=mSegKvHpylY&feature=emb_logo");
                  }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "كل ما يتعلق بسرعة التفاعل",) , (){
            launch("https://www.youtube.com/watch?v=B-K7akamt3I&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "كل ما يتعلق بالتقدم الكميائي",) , (){
                launch("https://www.youtube.com/watch?v=_4uJcY0KX7U&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "كل ما يتعلق بزمن نصف التفاعل",) , (){
                launch("https://www.youtube.com/watch?v=jaA9BDrAEAY&feature=emb_logo");
              }),
            ),
          ],
        ),
      ),);;
  }
}
