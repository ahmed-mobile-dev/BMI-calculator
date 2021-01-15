import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'reusable_text.dart';
import 'reusable_card.dart';
import 'constants.dart';

class unit_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("الظواهر الكهربائية")),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor,
                  ReusableText(text:  "الدرس الأول",) ,
                      (){

                    launch("https://www.youtube.com/watch?v=0EJ25crtoXw&feature=emb_logo");
                  }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "الدرس الثاني",) , (){
                launch("https://www.youtube.com/watch?v=rz0hLfFVsjU&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تفريغ مكثفة",) , (){
                launch("https://www.youtube.com/watch?v=4fDXOKw_te8&feature=emb_logo");
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "شحن مكثفة",) , (){
                launch("https://www.youtube.com/watch?v=Qcyy996Hsps&feature=emb_logo");
              }),
            ),

          ],
        ),
      ),);;
  }
}
