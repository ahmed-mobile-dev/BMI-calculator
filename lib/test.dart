import 'package:bmi_calculator/unit1_test.dart';
import 'package:flutter/material.dart';
import 'reusable_text.dart';
import 'reusable_card.dart';
import 'constants.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("إختبر معارفك في كل وحدة")),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor,
                  ReusableText(text:  "المتابعة الزمنية لتحول كميائي",) ,
                      (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => unit1_test()));
                      }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "باقي الوحدات ستكون متوفرة في النسخة القادمة....",) ,null),
            ),

          ],
        ),
      ),);;
  }
}
