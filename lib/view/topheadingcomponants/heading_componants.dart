import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadingImage extends StatelessWidget {
  const HeadingImage(
      {Key? key,
      required this.title,
      required this.subTitle,
               this.path,
      this.isImage = false,
      this.widget})
      : super(key: key);
  final String title;
  final String subTitle;
  final String? path;
  final Widget? widget;
  final bool isImage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
             if(isImage) ...[ SvgPicture.asset(path!),
             const SizedBox(width: 30)],  Text(title, textAlign: TextAlign.center,),
            ],
          ),
          const SizedBox(height: 20),
          Text(subTitle),
        ],
      ),
    );
  }
}
