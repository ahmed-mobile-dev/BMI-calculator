import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'reusable_text.dart';
import 'reusable_card.dart';
import 'constants.dart';

class unit_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("التحولات النووية")),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor,
                  ReusableText(text:  "الدرس الأول",) ,
                      (){

                    launch("https://www.youtube.com/watch?v=Gg4tunQM22c&feature=emb_logo");
                  }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "الدرس الثاني",) , (){
                launch("https://www.youtube.com/watch?v=FRAKIwIHaM0&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "الدرس الثالث",) , (){
                launch("https://www.youtube.com/watch?v=uDWHEMr1GFs&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تمرين حول الدرس الثاني",) , (){
                launch("https://www.youtube.com/watch?v=Qbeg7nbFF4s&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "كل شيئ عن الطاقة المحررة",) , (){
                launch("https://www.youtube.com/watch?v=xWRNwnfc95o&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "كلام في الأندماج النووي",) , (){
                launch("https://www.youtube.com/watch?v=rwTvh9ArAfc&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "التأريخ بالكربون 14",) , (){
                launch("https://www.youtube.com/watch?v=faI5rnXh23g&feature=emb_logo");
              }),
            ),
          ],
        ),
      ),);;
  }
}
