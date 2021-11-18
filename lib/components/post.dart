import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class post extends StatelessWidget {
  const post({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xff56B448),
          child: Row(
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/2934/2934894.png",
                height: 50,
                width: 50,
              ),
              const Text(
                "  Created by Abdulmohseen",
                style: TextStyle(color: Colors.black),
              ),
              const Spacer(),
              const Icon(Icons.more_horiz),
              const SizedBox(width: 7),
            ],
          ),
        ),
        Image.network(
          "https://neurosciencenews.com/files/2021/09/cat-psychosis-neurosicnes-public.jpg",
        ),
        Row(
          children: [
            const SizedBox(width: 3),
            SvgPicture.asset(
              kHeartSvgAsset,
              color: Colors.red,
            ),
            const SizedBox(width: 5),
            SvgPicture.asset(kCommentSvgAsset),
            const SizedBox(width: 5),
            SvgPicture.asset(
              kShareSvgAsset,
              color: Colors.blue,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 5,
              height: 15,
            ),
            Image.network(
                "https://ga.berkeley.edu/wp-content/uploads/2015/08/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png",
                height: 30,
                width: 30),
            const Text("Liked by"),
            const SizedBox(width: 5),
            const Text(
              "Ahmad",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text("and")),
            const Text(
              "99 others",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            ),
            const Spacer(),
            SvgPicture.asset(kBookmarkSvgAsset),
            const SizedBox(width: 7),
          ],
        ),
      ],
    );
  }
}
