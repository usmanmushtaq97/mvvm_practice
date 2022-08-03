import 'package:flutter/material.dart';
import 'package:mvvm_practice/view/topheadingcomponants/heading_componants.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50),
            HeadingImage(title: "Title", subTitle: "Lorum is the sub title of the text below", isImage: true, path: "assets/svg/notification_icon.svg",)
          ],
        ),
      ),
    );
  }
}
