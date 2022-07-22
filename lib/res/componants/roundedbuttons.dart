import 'package:flutter/material.dart';

import '../colors.dart';
class RoundedButton extends StatelessWidget {
  final String title;
  final bool loading;
 final VoidCallback onPress;
  const RoundedButton({Key? key, required this.title, required this.loading, required this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            color: AppColors.buttonBlue,
              borderRadius: BorderRadius.circular(15),
          ),
          child: loading? CircularProgressIndicator(color: AppColors.whiteTextColor) : Text(title ,
          style: TextStyle(color: AppColors.whiteTextColor),
        )
    ),);
  }
}

