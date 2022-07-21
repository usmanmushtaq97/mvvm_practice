// import 'package:finders_seat/animations/slide_right.dart';
// import 'package:finders_seat/res/assets.dart';
// import 'package:finders_seat/res/colors.dart';
// import 'package:finders_seat/res/common_padding.dart';
// import 'package:finders_seat/res/res.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/settings_screens/settings_screen.dart';
// import 'package:finders_seat/widgets/text_views.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class CommonAppBar {
//   static AppBar customAppBarWithBackButtonAndTitle(
//       {required BuildContext context, required String appBarTitle}) {
//     return AppBar(
//       toolbarHeight: sizes!.heightRatio * 50.0,
//       backgroundColor: AppColors.whiteTextColor,
//       automaticallyImplyLeading: false,
//       elevation: 0.0,
//       centerTitle: true,
//       title: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CommonPadding.sizeBoxWithWidth(width: 20.0),
//           GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: SizedBox(
//                   height: sizes!.heightRatio * 24.0,
//                   width: sizes!.widthRatio * 24.0,
//                   child: Image.asset("assets/png/back_icon.png"))),
//           CommonPadding.sizeBoxWithWidth(width: 8),
//           TextView.getWelcomeTextWith28(appBarTitle, Assets.poppinsMedium,
//               color: AppColors.primary900, lines: 1)
//         ],
//       ),
//     );
//   }
//
//   static AppBar customAppBarWithBackButtonAndTitleAndRightIcon(
//       {required BuildContext context,
//       required String appBarTitle,
//       required dynamic icon}) {
//     return AppBar(
//       toolbarHeight: sizes!.heightRatio * 50.0,
//       backgroundColor: AppColors.whiteTextColor,
//       automaticallyImplyLeading: false,
//       elevation: 0.0,
//       centerTitle: true,
//       title: Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CommonPadding.sizeBoxWithWidth(width: 20.0),
//           GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: SizedBox(
//                   height: sizes!.heightRatio * 24.0,
//                   width: sizes!.widthRatio * 24.0,
//                   child: SvgPicture.asset(
//                       "assets/svg/appbar_back_button_icon.svg"))),
//           CommonPadding.sizeBoxWithWidth(width: 8),
//           TextView.getWelcomeTextWith28(appBarTitle, Assets.poppinsMedium,
//               color: AppColors.primary900, lines: 1),
//           const Spacer(),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context, SlideRightRoute(page: const SettingsScreen()));
//             },
//             child: Container(
//               height: sizes!.heightRatio * 40.0,
//               width: sizes!.widthRatio * 40.0,
//               decoration: const BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: AppColors.whiteTextColor,
//                     blurRadius: 32.0,
//                     offset: Offset(0, 12),
//                   ),
//                 ],
//               ),
//               child: SvgPicture.asset(
//                 "assets/svg/settings_icon.svg",
//                 height: sizes!.heightRatio * 20,
//                 width: sizes!.widthRatio * 20,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
