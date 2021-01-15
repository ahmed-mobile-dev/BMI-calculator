import 'package:bmi_calculator/unit_1.dart';
import 'package:bmi_calculator/unit_2.dart';
import 'package:bmi_calculator/unit_3.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'reusable_text.dart';
import 'reusable_card.dart';
import 'constants.dart';

class video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("دروس بالفديو")),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor,
                  ReusableText(text:  "المتابعة الزمنية لتحول كميائي",) ,
                      (){

                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => unit_1()));

                      }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "التحولات النووية",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => unit_2()));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "دراسة الظواهرالكهربائية",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => unit_3()));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "باقي الوحدات ستكون متوفرة في النسخة القادمة من التطبيق",) ,
             null),
            ),
          ],
        ),
      ),);;
  }
}
