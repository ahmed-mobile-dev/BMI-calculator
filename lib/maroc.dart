import 'package:flutter/material.dart';
import 'reusable_text.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'viewpdf.dart';
class maroc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("تمارين مغربية صعبة نوعا ما")),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تمارين تدريبية محلولة - الفصل 1",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/5czqc95s4dfcbgf/RevHiv2020_Part1-fusionn%C3%A9.pdf?dl=1",)));

              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تمارين شاملة لكل أفكار الفصل الأول محلولة",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/815y511utnx58m5/rev-hiver-fort.pdf?dl=1",)));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تمارين تدريبية محلولة - الفصل 2",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/c5plyh029xjmnhh/RevPrint_2020A-fusionn%C3%A9.pdf?dl=1",)));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "مواضيع تجريبة محلولة",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/oz2ps00d3cqk2lc/RevFinal18_SE.pdf?dl=1",)));
              }),
            ),
          ],
        ),
      ),);;
  }
}
