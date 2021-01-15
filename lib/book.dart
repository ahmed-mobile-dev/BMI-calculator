import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'reusable_text.dart';
import 'viewpdf.dart';

class book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:Color(0xFF0A0E21),
    ) ,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("دروس و ملخصات")),),
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(kInactiveColor,
                 ReusableText(text:  "المتابعة الزمنية لتحول كميائي",) ,
                      (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/jbrermajrf9g4fw/motaba3a.pdf?dl=1",)));
                      }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "التحولات النووية",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/z3fv9o7vit4sl75/nucleaire.pdf?dl=1",)));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "دراسة ضواهر كهربائية",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/lzyyqti2evpcjv0/ResU3.pdf?dl=1",)));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تطور جملة كميائية نحو حالة التوازن",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/jkv1jp0cgi954r7/ResU4.pdf?dl=1",)));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "تطور جملة ميكانيكية",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/f35rpks3upvnme9/ResU5.pdf?dl=1",)));
              }),
            ),
            Expanded(
              child: ReusableCard(kInactiveColor, ReusableText(text:  "مراقبة تطور جملة كميائية",) , (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ViewPdf(url: "https://www.dropbox.com/s/0y2iu2ya6ts2ztz/ResU6.pdf?dl=1",)));
              }),
            ),
          ],
        ),
    ),);
  }
}
