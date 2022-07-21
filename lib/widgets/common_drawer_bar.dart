// import 'package:finders_seat/animations/slide_right.dart';
// import 'package:finders_seat/local_cache/utils.dart';
// import 'package:finders_seat/res/assets.dart';
// import 'package:finders_seat/res/colors.dart';
// import 'package:finders_seat/res/common_padding.dart';
// import 'package:finders_seat/res/extensions.dart';
// import 'package:finders_seat/res/res.dart';
// import 'package:finders_seat/screens/auth/login_screens/login_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/credit_screens/credit_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/hot_or_not_screens/hot_or_not_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/people_liked_user_screens/people_liked_user_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/people_user_disliked_screens/people_user_disliked_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/people_user_liked_screens/people_user_liked_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/popularity_screens/popularity_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/settings_screens/settings_screen.dart';
// import 'package:finders_seat/screens/main_home_screens/drawer_menu_screens/transaction_screens/transaction_screen.dart';
// import 'package:finders_seat/widgets/text_views.dart';
// import 'package:flutter/material.dart';
//
// import '../res/strings.dart';
// //
// class CommonDrawerBar {
//   static Widget getDrawerBar(
//       {required BuildContext context, @required int? isCurrentScreen}) {
//     String userName = PreferenceUtils.getString(Strings.loginName) ?? "";
//     return ClipRRect(
//       borderRadius: const BorderRadius.only(
//         topRight: Radius.circular(30.0),
//         bottomRight: Radius.circular(30.0),
//       ),
//       child: Drawer(
//         backgroundColor: AppColors.tertiaryDrawer,
//         elevation: 0.0,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             CommonPadding.sizeBoxWithHeight(height: 30),
//             Padding(
//               padding:
//                   EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 30.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: SizedBox(
//                   height: sizes!.heightRatio * 50,
//                   width: sizes!.widthRatio * 50,
//                   child: Image.asset("assets/png/upload_user_avatar.png"),
//                 ),
//               ),
//             ),
//             CommonPadding.sizeBoxWithHeight(height: 11),
//             TextView.getRegularS17W600Text(userName, Assets.poppinsMedium,
//                     color: AppColors.primary900, lines: 1)
//                 .getAlign()
//                 .get30HorizontalPadding(),
//             const Text.rich(TextSpan(
//                 text: 'Popularity:',
//                 style: TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.normal,
//                     fontFamily: Assets.poppinsRegular,
//                     color: AppColors.neutral500),
//                 children: [
//                   TextSpan(
//                     text: ' Low',
//                     style: TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.normal,
//                         fontFamily: Assets.poppinsRegular,
//                         color: AppColors.error500),
//                   )
//                 ])).get30HorizontalPadding().getAlign(),
//             CommonPadding.sizeBoxWithHeight(height: 14),
//             GestureDetector(
//                 onTap: () {
//                   navigateToScreen(
//                       context: context, screen: const PopularityScreen());
//                 },
//                 child: popularityButton()),
//             CommonPadding.sizeBoxWithHeight(height: 16),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_credit_icon.png",
//                 text: "0 Credit",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context, screen: const CreditScreen());
//                 }),
//             _getDivider(),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_like_icon.png",
//                 text: "Likes",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context, screen: const PeopleLikedUserScreen());
//                 }),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_liked_icon.png",
//                 text: "People I liked",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context, screen: const PeopleUserLikedScreen());
//                 }),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_disliked_icon.png",
//                 text: "People I Disliked",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context,
//                       screen: const PeopleUserDislikedScreen());
//                 }),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_hot_or_not_icon.png",
//                 text: "Hot or Not",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context, screen: const HotOrNotScreen());
//                 }),
//             _getDivider(),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_setting_icon.png",
//                 text: "Settings",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context, screen: const SettingsScreen());
//                 }),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_trans_icon.png",
//                 text: "Transaction",
//                 onPress: () {
//                   navigateToScreen(
//                       context: context, screen: const TransactionsScreen());
//                 }),
//             _getDivider(),
//             _drawerMenuRow(
//                 icon: "assets/png/drawer_logout_icon.png",
//                 text: "Log Out",
//                 onPress: () {
//                   _logout(context: context);
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Future<void> _logout({required BuildContext context}) async {
//     await PreferenceUtils.clearPreferences();
//     Navigator.pushReplacement(
//         context, SlideRightRoute(page: const LoginScreen()));
//   }
//
//   static Future<void> navigateToScreen(
//       {required BuildContext context, required Widget screen}) async {
//     Navigator.push(context, SlideRightRoute(page: screen));
//   }
//
//   static _getDivider() {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 50.0),
//       child: const Divider(
//         thickness: 1.0,
//         color: AppColors.drawerDividerColor,
//       ),
//     );
//   }
//
//   static Widget popularityButton() {
//     return Container(
//       height: sizes!.heightRatio * 36.0,
//       width: sizes!.widthRatio * 173,
//       decoration: BoxDecoration(
//           border: Border.all(color: AppColors.primary400),
//           borderRadius: BorderRadius.circular(30)),
//       child: Padding(
//         padding: EdgeInsets.only(
//             left: sizes!.widthRatio * 18.0, right: sizes!.widthRatio * 18.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image.asset(
//               "assets/png/increase_up_icon_02.png",
//               height: sizes!.heightRatio * 16,
//               width: sizes!.widthRatio * 16,
//             ),
//             TextView.getSmallText12(
//                 "Increase Popularity", Assets.poppinsRegular,
//                 color: AppColors.primary500, lines: 1)
//           ],
//         ),
//       ),
//     ).getAlign().get30HorizontalPadding();
//   }
//
//   static Widget _drawerMenuRow(
//       {required dynamic icon,
//       required String text,
//       @required Function? onPress}) {
//     return GestureDetector(
//       onTap: () {
//         if (onPress != null) {
//           onPress.call();
//         }
//       },
//       child: Row(
//         children: [
//           Image.asset(
//             icon,
//             height: sizes!.heightRatio * 40.0,
//             width: sizes!.widthRatio * 40.0,
//           ),
//           TextView.getRegularS17W600Text(text, Assets.poppinsRegular,
//               color: AppColors.neutral900, lines: 1),
//         ],
//       ).get30HorizontalPadding(),
//     );
//   }
// }
