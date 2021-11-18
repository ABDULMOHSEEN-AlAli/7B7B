// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// Import the packages that we need
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/post.dart';

// make a class call home view that contsain everythings about main view page
class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // make a Scaffold which is the contaner for the whole page
    return Scaffold(
        // make  an upper part with the logo and some colors and also some Icons
        appBar: AppBar(
          title: SvgPicture.asset(kLogoSvgAsset),
          backgroundColor: Colors.lightGreen,
          actions: [
            SvgPicture.asset(kAddSvgAssest),
            SizedBox(width: 23),
            SvgPicture.asset(kHeartSvgAsset),
            SizedBox(width: 21),
            SvgPicture.asset(kMessengerSvgAsset),
            SizedBox(width: 10),
          ],
        ),

        // make a body area which is in the midale
        // SingleChildScrollViwe is used to mak the page scroll which mean moving ups and down
        body: SingleChildScrollView(
          child: Column(
            children: [
              post(),
              post(),
              post(),
            ],
          ),
        ));
  }
}
