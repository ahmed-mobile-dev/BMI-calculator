import 'package:bmi_calculator/test.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'maroc.dart';
import 'reusable_card.dart';
import 'reusable_colum.dart';
import 'constants.dart';
import 'book.dart';
import 'video.dart';
import 'package:firebase_admob/firebase_admob.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color MaleCardColor = kInactiveColor;
  Color FemalCardColor = kInactiveColor;

  @override
  Widget build(BuildContext context) {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-5987943890049397~9793755076");
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BAC PHYSIQUE 2021")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                      kInactiveColor,
                      ReusableColum(
                        text: "دروس و ملخصات",
                        icon: FontAwesomeIcons.book,
                      ), () {

                    //
                    myInterstitial
                      ..load()
                      ..show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0,
                      );
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => book()));
                  }),
                ),
                Expanded(
                  child: ReusableCard(
                    kInactiveColor,
                    ReusableColum(
                      icon: FontAwesomeIcons.video,
                      text: "دروس بالفديو",
                    ),
                    () {
                      myInterstitial
                        ..load()
                        ..show(
                          anchorType: AnchorType.bottom,
                          anchorOffset: 0.0,
                          horizontalCenterOffset: 0.0,
                        );
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => video()));
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                      kInactiveColor,
                      ReusableColum(
                        icon: FontAwesomeIcons.check,
                        text: "إختبر معارفك",
                      ), () {
                    myInterstitial
                      ..load()
                      ..show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0,
                      );
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => test()));
                  }),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                kInactiveColor,
                ReusableColum(
                  icon: FontAwesomeIcons.bookOpen,
                  text: "تمارين مغربية محلولة بأفكار جديدة",
                ), () {
              myInterstitial
                ..load()
                ..show(
                  anchorType: AnchorType.bottom,
                  anchorOffset: 0.0,
                  horizontalCenterOffset: 0.0,
                );
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => maroc()));
            }),
          ),
        ],
      ),
    );
  }

}
MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io',
  birthday: DateTime.now(),
  childDirected: false,
  designedForFamilies: false,
  gender: MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
  testDevices: <String>[], // Android emulators are considered test devices
);
InterstitialAd myInterstitial = InterstitialAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: "ca-app-pub-5987943890049397/4074524532",
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("InterstitialAd event is $event");
  },
);

