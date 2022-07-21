// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mvvm_practice/res/res.dart';
// import 'package:mvvm_practice/res/colors.dart';
// import '../res/colors.dart';
// class CommonWidgets {
//   static Widget getCircleEditPhoto({
//     @required Function? onEditImage,
//     @required File? selectedImage,
//   }) {
//     debugPrint("selectedImage $selectedImage");
//
//     return Align(
//       alignment: Alignment.center,
//       child: Column(
//         children: [
//           Container(
//             height: sizes!.heightRatio * 100.0,
//             width: sizes!.widthRatio * 100.0,
//             decoration: const BoxDecoration(
//               color: AppColors.cardShadowColor,
//               shape: BoxShape.circle,
//             ),
//             child: CircleAvatar(
//                 radius: 80.0,
//                 backgroundImage: selectedImage != null
//                     ? FileImage(selectedImage)
//                     : const AssetImage("assets/png/upload_user_avatar.png")
//                         as ImageProvider),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getCirclePhoto({
//     @required Function? onEditImage,
//     @required File? selectedImage,
//   }) {
//     debugPrint("selectedImage $selectedImage");
//
//     return Align(
//       alignment: Alignment.center,
//       child: Column(
//         children: [
//           Container(
//             height: sizes!.heightRatio * 150.0,
//             width: sizes!.widthRatio * 150.0,
//             decoration: const BoxDecoration(
//               color: AppColors.primary900,
//               shape: BoxShape.circle,
//             ),
//             child: CircleAvatar(
//                 radius: 80.0,
//                 backgroundImage: selectedImage != null
//                     ? FileImage(selectedImage)
//                     : const AssetImage("assets/png/upload_user_avatar.png")
//                         as ImageProvider),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget onBoardingStatus(
//       {required bool isPhotoScreen,
//       required bool isInfoScreen,
//       required bool isInterestScreen}) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 30.0),
//       child: Row(
//         children: [
//           isPhotoScreen
//               ? Container(
//                   height: sizes!.heightRatio * 16.0,
//                   width: sizes!.widthRatio * 16.0,
//                   decoration: const BoxDecoration(
//                       color: AppColors.tertiary500, shape: BoxShape.circle),
//                 )
//               : Container(
//                   height: sizes!.heightRatio * 16.0,
//                   width: sizes!.widthRatio * 16.0,
//                   decoration: BoxDecoration(
//                       // color: AppColors.tertiary500,
//                       border:
//                           Border.all(color: AppColors.tertiary900, width: 1.5),
//                       shape: BoxShape.circle),
//                 ),
//           Expanded(
//               child: Divider(
//             thickness: 1.5,
//             color: isPhotoScreen ? AppColors.tertiary500 : AppColors.neutral300,
//           )),
//           isInfoScreen
//               ? Container(
//                   height: sizes!.heightRatio * 16.0,
//                   width: sizes!.widthRatio * 16.0,
//                   decoration: const BoxDecoration(
//                       color: AppColors.tertiary500, shape: BoxShape.circle),
//                 )
//               : Container(
//                   height: sizes!.heightRatio * 16.0,
//                   width: sizes!.widthRatio * 16.0,
//                   decoration: BoxDecoration(
//                       // color: AppColors.tertiary500,
//                       border: Border.all(
//                           color: isInfoScreen
//                               ? AppColors.tertiary900
//                               : AppColors.neutral300,
//                           width: 1.5),
//                       shape: BoxShape.circle),
//                 ),
//           Expanded(
//               child: Divider(
//             thickness: 1.5,
//             color: isInfoScreen ? AppColors.tertiary500 : AppColors.neutral300,
//           )),
//           isInterestScreen
//               ? Container(
//                   height: sizes!.heightRatio * 16.0,
//                   width: sizes!.widthRatio * 16.0,
//                   decoration: const BoxDecoration(
//                       color: AppColors.tertiary500, shape: BoxShape.circle),
//                 )
//               : Container(
//                   height: sizes!.heightRatio * 16.0,
//                   width: sizes!.widthRatio * 16.0,
//                   decoration: BoxDecoration(
//                       // color: AppColors.tertiary500,
//                       border: Border.all(
//                           color: isInterestScreen
//                               ? AppColors.tertiary900
//                               : AppColors.neutral300,
//                           width: 1.5),
//                       shape: BoxShape.circle),
//                 ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getCustomCheckbox({required bool isCheck}) {
//     return Row(
//       children: [
//         Checkbox(
//           value: true,
//           activeColor: AppColors.tertiary900,
//           onChanged: (isCheck) {},
//         ),
//         CommonWidgets.loginText(
//             text: "You agree to our terms of use & privacy.",
//             fontSize: sizes!.fontRatio * 13,
//             color: AppColors.primary900)
//       ],
//     );
//   }
//
//   static Widget getAppBarCustomJustBackButton(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pop(context);
//       },
//       child: SizedBox(
//         height: sizes!.heightRatio * 32.0,
//         width: sizes!.widthRatio * 32.0,
//         child: Image.asset(
//           "assets/png/back_icon.png",
//         ),
//       ),
//     );
//   }
//
//   static Widget textFieldHeadingText(
//       {@required String? text,
//       @required double? fontSize,
//       @required Color? color}) {
//     return Text(
//       text!,
//       style: TextStyle(
//         color: color,
//         fontFamily: Assets.poppinsRegular,
//         fontSize: sizes!.fontRatio * fontSize!,
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithPasswordCustomContainerIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required bool? hidePassword,
//       @required bool? isValid,
//       @required Function? clickIcon,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     hidePassword ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.pmTextFieldUnSelectedBorderColor
//               : AppColors.pmTextFieldBorderColor,
//           //AppColors.textFieldBorderColor,
//           width: isValid ? 1.0 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.pmTextFieldBorderShadowColor,
//             blurRadius: 32.0,
//             offset: Offset(0, 12),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: Image.asset(icon),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: TextField(
//                 obscureText: hidePassword,
//                 controller: controller,
//                 keyboardType: keyboardType,
//                 decoration: InputDecoration(
//                   hintText: placeHolder,
//                   hintStyle: const TextStyle(
//                       color: AppColors.lightGreyTextColor,
//                       fontFamily: Assets.poppinsLight,
//                       fontSize: 14),
//                   contentPadding: EdgeInsets.only(
//                       bottom: sizes!.heightRatio * 15,
//                       top: sizes!.heightRatio * 15),
//                   border: InputBorder.none,
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       hidePassword
//                           ? Icons.visibility_outlined
//                           : Icons.visibility_off_outlined,
//                       color: AppColors.pmGetStartedButtonColor,
//                     ),
//                     onPressed: () {
//                       if (clickIcon != null) {
//                         clickIcon.call();
//                       }
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithBottomLine(
//       {@required String? labelText,
//       @required String? hintText,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return TextFormField(
//       textAlignVertical: TextAlignVertical.center,
//       obscureText: false,
//       controller: controller,
//       keyboardType: keyboardType,
//       decoration: InputDecoration(
//         labelText: labelText,
//         hintText: hintText,
//         labelStyle: const TextStyle(color: AppColors.tertiary900),
//         hintStyle: const TextStyle(
//             color: AppColors.primary900,
//             fontFamily: Assets.poppinsRegular,
//             fontSize: 17),
//         border: const UnderlineInputBorder(
//             borderSide: BorderSide(
//           color: AppColors.neutral400,
//         )),
//         focusedBorder: const UnderlineInputBorder(
//             borderSide: BorderSide(
//           color: AppColors.tertiary900,
//         )),
//       ),
//     );
//   }
//
//   static Widget customPasswordTextFieldWithBottomLine(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required bool? hidePassword,
//       @required bool? isValid,
//       @required Function? clickIcon,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//     hidePassword ??= true;
//
//     return TextFormField(
//       textAlignVertical: TextAlignVertical.center,
//       obscureText: hidePassword,
//       controller: controller,
//       keyboardType: keyboardType,
//       decoration: InputDecoration(
//         labelText: placeHolder,
//         hintText: placeHolder,
//         labelStyle: const TextStyle(color: AppColors.tertiary900),
//         hintStyle: const TextStyle(
//             color: AppColors.primary900,
//             fontFamily: Assets.poppinsRegular,
//             fontSize: 17),
//         border: const UnderlineInputBorder(
//             borderSide: BorderSide(
//           color: AppColors.neutral400,
//         )),
//         focusedBorder: const UnderlineInputBorder(
//             borderSide: BorderSide(
//           color: AppColors.tertiary900,
//         )),
//         suffixIcon: IconButton(
//           icon: Icon(
//             hidePassword
//                 ? Icons.visibility_outlined
//                 : Icons.visibility_off_outlined,
//             color: AppColors.tertiary900,
//           ),
//           onPressed: () {
//             if (clickIcon != null) {
//               clickIcon.call();
//             }
//           },
//         ),
//       ),
//     );
//   }
//
//   static Widget getStartedButton(String text, {Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 330,
//       height: sizes!.heightRatio * 49,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(50)),
//         color: AppColors.primary500,
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getPremiumButton(String text, {Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 330,
//       height: sizes!.heightRatio * 50,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(50)),
//         color: AppColors.secondary500,
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   // End Finders Dating App Widgets.
//
//   static Widget customTextWithContainerIcon({
//     @required String? placeHolder,
//     @required dynamic icon,
//     @required Function? onIconPress,
//   }) {
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.textFieldBorderColor,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onIconPress != null) {
//                       onIconPress.call();
//                     }
//                   },
//                   child: Image.asset(icon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Center(
//               child: TextView.getSubHeadingTextWith15(
//                   placeHolder, Assets.poppinsMedium,
//                   color: AppColors.blackTextColor,
//                   lines: 2,
//                   fontWeight: FontWeight.normal),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget getAppBarWithTitleAndDoubleButton({
//     @required BuildContext? context,
//     @required String? title,
//     @required String? firstIcon,
//     @required String? secondIcon,
//     @required Function? onFirstIconPress,
//     @required Function? onSecondIconPress,
//   }) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(
//             left: sizes!.widthRatio * 30.0, right: sizes!.widthRatio * 30.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 GestureDetector(
//                     onTap: () {
//                       if (onFirstIconPress != null) {
//                         onFirstIconPress.call();
//                       }
//                     },
//                     child: Image.asset(
//                       firstIcon!,
//                       height: sizes!.heightRatio * 35.0,
//                       width: sizes!.widthRatio * 35.0,
//                     )),
//                 SizedBox(
//                   width: sizes!.widthRatio * 18,
//                 ),
//                 TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//               ],
//             ),
//             GestureDetector(
//                 onTap: () {
//                   if (onSecondIconPress != null) {
//                     onSecondIconPress.call();
//                   }
//                 },
//                 child: Image.asset(
//                   secondIcon!,
//                   height: sizes!.heightRatio * 35.0,
//                   width: sizes!.widthRatio * 35.0,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget getNotificationCardWithoutContainer() {
//     return Row(
//       children: [
//         Image.asset(
//           "assets/png/notification_icon@2x.png",
//           height: sizes!.heightRatio * 42.0,
//           width: sizes!.widthRatio * 42.0,
//         ),
//         SizedBox(
//           width: sizes!.widthRatio * 10.0,
//         ),
//         Row(
//           children: [
//             TextView.getRegular13Text("Shop and Win!", Assets.poppinsMedium,
//                 color: AppColors.pmSubHeadlineBlackColor, lines: 1),
//             CommonPadding.sizeBoxWithWidth(width: 100.0),
//             TextView.getSmallText12("12:30 AM", Assets.poppinsRegular,
//                 color: AppColors.pmSubHeadlineBlackColor, lines: 1),
//           ],
//         ),
//       ],
//     );
//   }
//
//   static Widget getSendMessageInputContainer(
//       {@required Function? onSendMessagePress}) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: sizes!.height * 0.07,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: AppColors.chatBorderColor,
//             width: 1,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           color: AppColors.whiteTextColor,
//           boxShadow: const [
//             BoxShadow(
//               color: AppColors.cardShadowColor,
//               blurRadius: 2, // 12
//               offset: Offset(0, 0), // 3
//             ),
//           ],
//         ),
//         child: TextFormField(
//           keyboardType: TextInputType.text,
//           style: const TextStyle(
//             fontFamily: Assets.poppinsRegular,
//           ),
//           decoration: InputDecoration(
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   if (onSendMessagePress != null) {
//                     onSendMessagePress.call();
//                   }
//                 },
//                 child: Padding(
//                   padding: EdgeInsets.only(right: sizes!.widthRatio * 10),
//                   child: Image.asset(
//                     Assets.iconSend,
//                     height: sizes!.heightRatio * 32.0,
//                     width: sizes!.widthRatio * 32.0,
//                   ),
//                 ),
//               ),
//               enabledBorder: const OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                   borderSide: BorderSide(color: Colors.white)),
//               focusedBorder: const OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(6.0)),
//                   borderSide: BorderSide(color: Colors.white)),
//               filled: true,
//               fillColor: AppColors.offWhite,
//               hintText: "Type Message Here...",
//               hintStyle: TextStyle(
//                   color: Colors.grey[500],
//                   fontFamily: Assets.poppinsRegular,
//                   fontSize: 14.0)),
//           // controller: controller,
//           cursorColor: AppColors.appBackground,
//           validator: (val) {
//             if (val!.isEmpty) {
//               return "Please type message";
//             } else {
//               return null;
//             }
//           },
//         ),
//       ),
//     );
//   }
//
//   static Widget getSenderMessageContainer() {
//     return Container(
//       padding: EdgeInsets.only(
//         left: sizes!.widthRatio * 10,
//         right: sizes!.widthRatio * 10,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           TextView.getSmallText12("10:00 PM", Assets.poppinsMedium,
//               color: AppColors.blackTextColor, lines: 1),
//           SizedBox(
//             width: sizes!.widthRatio * 10,
//           ),
//           Expanded(
//             child: Container(
//                 padding: EdgeInsets.all(sizes!.heightRatio * 12),
//                 margin: EdgeInsets.only(
//                     top: sizes!.heightRatio * 12.0,
//                     bottom: sizes!.heightRatio * 12.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: AppColors.chatBorderColor,
//                     width: 1,
//                   ),
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   color: AppColors.getStartedButtonColor,
//                   boxShadow: const [
//                     BoxShadow(
//                       color: AppColors.cardShadowColor,
//                       blurRadius: 2, // 12
//                       offset: Offset(0, 0), // 3
//                     ),
//                   ],
//                 ),
//                 child: TextView.getRegularWith13(
//                     "This is the message sent. chatBorderColor, chatBorderColor",
//                     Assets.poppinsRegular,
//                     color: AppColors.whiteTextColor,
//                     textAlign: TextAlign.left,
//                     lines: 5)),
//           ),
//           SizedBox(
//             width: sizes!.widthRatio * 10,
//           ),
//           SizedBox(
//               width: sizes!.widthRatio * 30.0,
//               child: const CircleAvatar(
//                 backgroundImage:
//                     AssetImage("assets/png/avatar_user_icon@2x.png"),
//               )),
//         ],
//       ),
//     );
//   }
//
//   static Widget getReceiverMessageContainer() {
//     return Container(
//       padding: EdgeInsets.only(
//         left: sizes!.widthRatio * 10,
//         right: sizes!.widthRatio * 10,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(
//               width: sizes!.widthRatio * 30.0,
//               child: const CircleAvatar(
//                 backgroundImage:
//                     AssetImage("assets/png/avatar_user_icon@2x.png"),
//               )),
//           SizedBox(
//             width: sizes!.widthRatio * 10,
//           ),
//           Expanded(
//             child: Container(
//                 padding: EdgeInsets.all(sizes!.heightRatio * 12),
//                 margin: EdgeInsets.only(
//                     top: sizes!.heightRatio * 12.0,
//                     bottom: sizes!.heightRatio * 12.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: AppColors.chatBorderColor,
//                     width: 1,
//                   ),
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   color: AppColors.whiteTextColor,
//                   boxShadow: const [
//                     BoxShadow(
//                       color: AppColors.cardShadowColor,
//                       blurRadius: 2, // 12
//                       offset: Offset(0, 0), // 3
//                     ),
//                   ],
//                 ),
//                 child: TextView.getRegularWith13(
//                     "This is the message received. chatBorderColor, chatBorderColor",
//                     Assets.poppinsRegular,
//                     color: AppColors.blackTextColor,
//                     lines: 5)),
//           ),
//           SizedBox(
//             width: sizes!.widthRatio * 10,
//           ),
//           TextView.getSmallText12("10:00 PM", Assets.poppinsMedium,
//               color: AppColors.blackTextColor, lines: 1),
//         ],
//       ),
//     );
//   }
//
//   static Widget getPopUpButton(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 127,
//       height: sizes!.heightRatio * 35,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: buttonColor ?? AppColors.getStartedButtonColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: buttonColor ?? AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getPopUpButtonWithHeight45(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 127,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: buttonColor ?? AppColors.getStartedButtonColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: buttonColor ?? AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getCustomBtn(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 152,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: buttonColor ?? AppColors.getStartedButtonColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: buttonColor ?? AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getPopUpConfirmButton(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 125,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: buttonColor ?? AppColors.getStartedButtonColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: buttonColor ?? AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getPopUpButtonWithBlackTextColor(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 125,
//       height: sizes!.heightRatio * 35,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: buttonColor ?? AppColors.getStartedButtonColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: buttonColor ?? AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getPopUpRedCancelButton(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 127,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.redColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.red,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getRedCancelButton(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         if (onPress != null) {
//           onPress.call();
//         }
//       },
//       child: Container(
//           width: sizes!.widthRatio * 173,
//           height: sizes!.heightRatio * 45,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: AppColors.redColor,
//               width: 1.5,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(4)),
//             color: AppColors.whiteTextColor,
//             boxShadow: const [
//               BoxShadow(
//                 color: AppColors.getStartedButtonColorShadow,
//                 blurRadius: 4, // 12
//                 offset: Offset(0, 0), // 3
//               ),
//             ],
//           ),
//           child: Center(
//             child: TextView.getRegularBoldText(text, Assets.poppinsMedium,
//                 color: AppColors.redColor, lines: 1),
//           )),
//     );
//   }
//
//   static Widget getCustomOutlineBtn(
//     String text, {
//     Function? onPress,
//     Color? buttonColor,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         if (onPress != null) {
//           onPress.call();
//         }
//       },
//       child: Container(
//           width: sizes!.widthRatio * 152,
//           height: sizes!.heightRatio * 45,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: AppColors.getStartedButtonColor,
//               width: 1.5,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(4)),
//             color: AppColors.whiteTextColor,
//             boxShadow: const [
//               BoxShadow(
//                 color: AppColors.getStartedButtonColorShadow,
//                 blurRadius: 4, // 12
//                 offset: Offset(0, 0), // 3
//               ),
//             ],
//           ),
//           child: Center(
//             child: TextView.getRegularBoldText(text, Assets.poppinsMedium,
//                 color: AppColors.getStartedButtonColor, lines: 1),
//           )),
//     );
//   }
//
//   static Widget customSearchBar(BuildContext context,
//       {String? hint,
//       @required dynamic controller,
//       @required Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 316,
//       height: sizes!.heightRatio * 44,
//       decoration: BoxDecoration(
//         color: AppColors.whiteTextColor,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: const [
//           BoxShadow(
//               color: AppColors.cardShadowColor,
//               blurRadius: 2,
//               offset: Offset(1, 1))
//         ],
//       ),
//       child: Row(
//         children: [
//           IconButton(
//             onPressed: () {
//               if (onPress != null) {
//                 onPress.call();
//               }
//             },
//             icon: const ImageIcon(
//               AssetImage(Assets.searchIcon),
//               color: AppColors.getStartedButtonColor,
//             ),
//           ),
//           SizedBox(
//             width: sizes!.widthRatio * 200,
//             child: Center(
//               child: TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                     hintText: hint,
//                     hintStyle: const TextStyle(
//                       color: AppColors.blackTextColor,
//                       fontSize: 13.0,
//                     ),
//                     border: InputBorder.none),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getNotificationCard() {
//     return Container(
//       height: sizes!.heightRatio * 65.0,
//       width: sizes!.widthRatio * 315.0,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(
//             left: sizes!.widthRatio * 10.0, right: sizes!.widthRatio * 10.0),
//         child: Row(
//           children: [
//             Image.asset(
//               "assets/png/avatar_user_icon@2x.png",
//               height: sizes!.heightRatio * 42.0,
//               width: sizes!.widthRatio * 42.0,
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 10,
//             ),
//             Expanded(
//                 child: Center(
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: RichText(
//                     text: const TextSpan(
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           color: Colors.black,
//                         ),
//                         children: [
//                       TextSpan(
//                           text: "You have a 2 new notification from the ",
//                           style: TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 12.0,
//                               fontFamily: Assets.poppinsRegular)),
//                       TextSpan(
//                           text: " Patricia Bailey",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 13.0,
//                               fontFamily: Assets.poppinsMedium))
//                     ])),
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget getPaymentNotificationCard() {
//     return Container(
//       height: sizes!.heightRatio * 65.0,
//       width: sizes!.widthRatio * 315.0,
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//         color: AppColors.notificationCardColor,
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xdf5c41ca7).withOpacity(0.08),
//             blurRadius: 2,
//             offset: const Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(
//             left: sizes!.widthRatio * 10.0, right: sizes!.widthRatio * 10.0),
//         child: Row(
//           children: [
//             Image.asset(
//               "assets/png/photo@2x.png",
//               height: sizes!.heightRatio * 42.0,
//               width: sizes!.widthRatio * 42.0,
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 10,
//             ),
//             Expanded(
//                 child: Center(
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: RichText(
//                     text: const TextSpan(
//                         style: TextStyle(
//                           fontSize: 14.0,
//                           color: Colors.black,
//                         ),
//                         children: [
//                       TextSpan(
//                           text: "Patricia Bailey",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 13.0,
//                               fontFamily: Assets.poppinsRegular)),
//                       TextSpan(
//                           text: " has added a service in tow request",
//                           style: TextStyle(
//                               fontWeight: FontWeight.normal,
//                               fontSize: 12.0,
//                               fontFamily: Assets.poppinsRegular)),
//                     ])),
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget getBookingHistoryCard(
//       {@required String? title,
//       @required String? date,
//       @required String? time,
//       @required String? price,
//       @required double? rating}) {
//     return Container(
//       height: sizes!.heightRatio * 217.0,
//       width: sizes!.widthRatio * 315.0,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: sizes!.heightRatio * 14,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//                 left: sizes!.widthRatio * 12, right: sizes!.widthRatio * 12),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextView.getRegularBoldText(
//                     "13-01-2021, 6:00 PM", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//                 TextView.getRegularBoldText(
//                     "\$${price ?? 0.0}", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1)
//               ],
//             ),
//           ),
//           SizedBox(
//             height: sizes!.heightRatio * 6,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//                 left: sizes!.widthRatio * 12, right: sizes!.widthRatio * 12),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextView.getRegularText(
//                     title ?? "Tow Truck", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//                 RatingBar.builder(
//                   initialRating: rating ?? 0.0,
//                   minRating: 1,
//                   direction: Axis.horizontal,
//                   allowHalfRating: true,
//                   itemCount: 5,
//                   itemSize: 14,
//                   itemPadding:
//                       EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 0),
//                   itemBuilder: (context, _) => const Icon(
//                     Icons.star,
//                     color: Colors.amber,
//                   ),
//                   ignoreGestures: true,
//                   onRatingUpdate: (rating) {
//                     // onPress!.call(rating);
//                     // print(rating);
//                   },
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: sizes!.heightRatio * 14.0,
//           ),
//           Image.asset(
//             "assets/png/google_map_demo_02@2x.png",
//             height: sizes!.heightRatio * 137.0,
//             width: sizes!.widthRatio * 315.0,
//           )
//         ],
//       ),
//     );
//   }
//
//   static Widget getArrivedContainer(
//       {@required dynamic truckerPhoto,
//       @required dynamic arrivingTime,
//       @required String? text}) {
//     return Container(
//       height: sizes!.heightRatio * 43.0,
//       width: sizes!.widthRatio * 110.0,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(28)),
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 10.0),
//             child: Image.asset(
//               truckerPhoto ?? "assets/png/avatar_user_icon@2x.png",
//               height: sizes!.heightRatio * 33.0,
//               width: sizes!.widthRatio * 33.0,
//             ),
//           ),
//           SizedBox(
//             width: sizes!.widthRatio * 5.0,
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: sizes!.heightRatio * 8.0),
//             child: Column(
//               children: [
//                 TextView.getSmallBoldText12(text, Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//                 SizedBox(
//                   height: sizes!.heightRatio * 2.0,
//                 ),
//                 TextView.getSmallText12(
//                     arrivingTime ?? "15 mins", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   static Widget getRequestTowContainer({
//     @required dynamic arrivedTime,
//     @required dynamic deliveryPlace,
//     @required dynamic truckerName,
//     @required dynamic truckerRating,
//     @required dynamic truckerVehicleName,
//     @required dynamic truckerVehicleNumber,
//     @required Function? onMessagePress,
//     @required Function? onCancelRequestPress,
//   }) {
//     return Container(
//       height: sizes!.heightRatio * 310.0,
//       width: sizes!.widthRatio * 320.0,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: sizes!.heightRatio * 30,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//                 left: sizes!.widthRatio * 20.0,
//                 right: sizes!.widthRatio * 20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Align(
//                         alignment: Alignment.centerLeft,
//                         child: Image.asset(
//                           "assets/png/clock_icon@2x.png",
//                           height: sizes!.heightRatio * 19.0,
//                           width: sizes!.widthRatio * 19.0,
//                         )),
//                     SizedBox(
//                       width: sizes!.widthRatio * 8.0,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextView.getSubHeadingTextWith15(
//                             arrivedTime ?? "4:30 PM", Assets.poppinsMedium,
//                             color: AppColors.blackTextColor,
//                             lines: 1,
//                             fontWeight: FontWeight.bold),
//                         SizedBox(
//                           width: sizes!.widthRatio * 8.0,
//                         ),
//                         TextView.getRegularText(
//                             "Arrived Time", Assets.poppinsLight,
//                             color: AppColors.subHeadingTextColor, lines: 1),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                     height: sizes!.heightRatio * 26.0,
//                     child: const VerticalDivider(
//                         color: AppColors.subHeadingTextColor)),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       "assets/png/location_icon@2x.png",
//                       height: sizes!.heightRatio * 19.0,
//                       width: sizes!.widthRatio * 19.0,
//                     ),
//                     SizedBox(
//                       width: sizes!.widthRatio * 8.0,
//                     ),
//
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextView.getSubHeadingTextWith15(
//                             deliveryPlace ?? "Urbana, IL", Assets.poppinsMedium,
//                             color: AppColors.blackTextColor,
//                             lines: 1,
//                             fontWeight: FontWeight.bold),
//                         SizedBox(
//                           width: sizes!.widthRatio * 8.0,
//                         ),
//                         TextView.getRegularText(
//                             "Delivery place", Assets.poppinsLight,
//                             color: AppColors.subHeadingTextColor, lines: 1),
//                       ],
//                     ),
//                     // SizedBox(width: sizes!.widthRatio * 20.0,),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: sizes!.heightRatio * 10.0,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//                 left: sizes!.widthRatio * 20.0,
//                 right: sizes!.widthRatio * 20.0),
//             child: const Divider(),
//           ),
//           SizedBox(
//             height: sizes!.heightRatio * 5.0,
//           ),
//
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 28.0),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: TextView.getSmallBoldText12(
//                   "Your Tow Truck's is on the way.", Assets.poppinsMedium,
//                   color: AppColors.pass, lines: 1),
//             ),
//           ),
//           SizedBox(
//             height: sizes!.heightRatio * 5.0,
//           ),
//
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: sizes!.widthRatio * 25.0,
//                   right: sizes!.widthRatio * 25.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(bottom: sizes!.heightRatio * 10.0),
//                     child: Row(
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             if (onMessagePress != null) {
//                               onMessagePress.call();
//                             }
//                           },
//                           child: Image.asset(
//                             "assets/png/avatar_user_icon@2x.png",
//                             height: sizes!.heightRatio * 45.0,
//                             width: sizes!.widthRatio * 45.0,
//                           ),
//                         ),
//                         SizedBox(
//                           width: sizes!.widthRatio * 5.0,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   left: sizes!.widthRatio * 5.0),
//                               child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Row(
//                                   children: [
//                                     TextView.getSubHeadingTextWith15(
//                                         truckerName ?? "Alan Thor",
//                                         Assets.poppinsMedium,
//                                         color: AppColors.blackTextColor,
//                                         lines: 1,
//                                         fontWeight: FontWeight.bold),
//                                     SizedBox(
//                                       width: sizes!.widthRatio * 5.0,
//                                     ),
//                                     Image.asset(
//                                       "assets/png/verified_icon@2x.png",
//                                       height: sizes!.heightRatio * 12.58,
//                                       width: sizes!.widthRatio * 12.58,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: sizes!.heightRatio * 5.0,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   left: sizes!.widthRatio * 5.0),
//                               child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Row(
//                                   children: [
//                                     Image.asset(
//                                       "assets/png/star_icon@2x.png",
//                                       height: sizes!.heightRatio * 14.0,
//                                       width: sizes!.widthRatio * 15.0,
//                                     ),
//                                     SizedBox(
//                                       width: sizes!.widthRatio * 5.0,
//                                     ),
//                                     TextView.getRegularBoldText(
//                                         truckerRating ?? "5.00",
//                                         Assets.poppinsLight,
//                                         color: AppColors.blackTextColor,
//                                         lines: 1)
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       if (onMessagePress != null) {
//                         onMessagePress.call();
//                       }
//                     },
//                     child: Image.asset(
//                       "assets/png/message_icon@2x.png",
//                       height: sizes!.heightRatio * 33.0,
//                       width: sizes!.widthRatio * 33.0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           // SizedBox(
//           //   height: sizes!.heightRatio * 5.0,
//           // ),
//
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 25.0),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: TextView.getSubHeadingTextWith15(
//                   "Vehicle Information", Assets.poppinsMedium,
//                   color: AppColors.getStartedButtonColor,
//                   lines: 1,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//
//           SizedBox(
//             height: sizes!.heightRatio * 10.0,
//           ),
//
//           Padding(
//             padding: EdgeInsets.only(
//                 right: sizes!.widthRatio * 26.0,
//                 left: sizes!.widthRatio * 26.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextView.getRegularBoldWith13("Vehicle", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//                 TextView.getRegularBoldWith13(
//                     "Vehicle Number", Assets.poppinsMedium,
//                     color: AppColors.blackTextColor, lines: 1),
//               ],
//             ),
//           ),
//
//           SizedBox(
//             height: sizes!.heightRatio * 5.0,
//           ),
//
//           Padding(
//             padding: EdgeInsets.only(
//                 right: sizes!.widthRatio * 26.0,
//                 left: sizes!.widthRatio * 26.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextView.getRegular13Text(
//                     truckerVehicleName ?? "Suzuki Axel", Assets.poppinsMedium,
//                     color: AppColors.subHeadingTextColor, lines: 1),
//                 TextView.getRegular13Text(
//                     truckerVehicleNumber ?? "LEU-7652", Assets.poppinsMedium,
//                     color: AppColors.subHeadingTextColor, lines: 1),
//               ],
//             ),
//           ),
//
//           SizedBox(
//             height: sizes!.heightRatio * 20.0,
//           ),
//           CommonWidgets.getRedCancelButton("Cancel Request", onPress: () {
//             if (onCancelRequestPress != null) {
//               onCancelRequestPress.call();
//             }
//           }),
//
//           SizedBox(
//             height: sizes!.heightRatio * 20.0,
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getProfileImage({
//     @required String? profileImg,
//     @required Function? onEditImage,
//     @required bool? isImageUploaded,
//     @required File? selectedImage,
//   }) {
//     debugPrint("selectedImage $selectedImage");
//
//     return Align(
//       alignment: Alignment.center,
//       child: CircleAvatar(
//         child: Stack(
//           children: [
//             Positioned(
//                 bottom: 10,
//                 right: 5,
//                 child: GestureDetector(
//                   onTap: () {
//                     if (onEditImage != null) {
//                       onEditImage.call();
//                     }
//                   },
//                   child: Container(
//                     height: 20,
//                     width: 20,
//                     decoration: BoxDecoration(
//                       color: AppColors.greenColor,
//                       border: Border.all(color: AppColors.whiteTextColor),
//                       borderRadius: BorderRadius.circular(
//                         100,
//                       ),
//                     ),
//                     child: const Icon(
//                       Icons.add,
//                       color: AppColors.whiteTextColor,
//                       size: 15,
//                     ),
//                   ),
//                 )),
//           ],
//         ),
//         backgroundImage: (selectedImage == null)
//             ? NetworkImage("$profileImg")
//             : FileImage(selectedImage) as ImageProvider,
//
//         // backgroundImage: Image.file(selectedImage) as ImageProvider,
//         radius: 50.0,
//         backgroundColor: AppColors.transparentColor,
//       ),
//     );
//   }
//
//   static Widget getProfileImageRectangle({
//     @required String? profileImg,
//     @required Function? onEditImage,
//     @required bool? isImageUploaded,
//     @required File? selectedImage,
//   }) {
//     debugPrint("selectedImage $selectedImage");
//
//     return Align(
//       alignment: Alignment.center,
//       child: Stack(
//         children: [
//           SizedBox(
//             height: sizes!.heightRatio * 100.0,
//             width: sizes!.widthRatio * 100.0,
//             child: ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(20)),
//               child: Image(
//                 image: (selectedImage == null)
//                     ? NetworkImage("$profileImg")
//                     : FileImage(selectedImage) as ImageProvider,
//               ),
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               right: 0,
//               child: GestureDetector(
//                 onTap: () {
//                   if (onEditImage != null) {
//                     onEditImage.call();
//                   }
//                 },
//                 child: Container(
//                   height: 20,
//                   width: 20,
//                   decoration: BoxDecoration(
//                     color: AppColors.pmGetStartedButtonColor,
//                     border: Border.all(color: AppColors.whiteTextColor),
//                     borderRadius: BorderRadius.circular(
//                       100,
//                     ),
//                   ),
//                   child: const Icon(
//                     Icons.add,
//                     color: AppColors.whiteTextColor,
//                     size: 15,
//                   ),
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
//
//   // backgroundImage: (selectedImage == null)
//   // ? NetworkImage("$profileImg")
//   //     : FileImage(selectedImage) as ImageProvider,
//
//   static Widget getButtonRequestATow(
//       {@required String? text, @required Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 277,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.getStartedButtonColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.getStartedButtonColorShadow,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text ?? "",
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getButtonRoadServices(
//       {@required String? text, @required Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 277,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.roadServiceBtnBorderColor,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.roadServiceBtnColorShadow,
//             blurRadius: 0.5, // 12
//             offset: Offset(0, 0), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text ?? "",
//           style: const TextStyle(
//             color: AppColors.getStartedButtonColor,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getAnyColorButton({
//     @required String? text,
//     @required Function? onPress,
//     @required Color? backgroundColor,
//   }) {
//     return Container(
//       width: sizes!.widthRatio * 315,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.redColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: backgroundColor ?? AppColors.getStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text ?? "",
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getAppBarWithMenuOrBackButtonIconText(
//       {@required BuildContext? context,
//       @required String? title,
//       @required String? icon,
//       @required Function? onPress}) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
//             child: TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: sizes!.widthRatio * 30),
//             child: SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: CommonWidgets.customMenuButton(
//                   context: context,
//                   icon: icon ?? "assets/png/edit_icon@2x.png",
//                   onPress: () {
//                     if (onPress != null) {
//                       onPress.call();
//                     }
//                   }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getAppBarWithEditButton(
//       {@required BuildContext? context,
//       @required String? title,
//       @required String? icon,
//       @required Function? onPress}) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
//             child: TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: sizes!.widthRatio * 30),
//             child: SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onPress != null) {
//                       onPress.call();
//                     }
//                   },
//                   child: Image.asset(icon!)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getAppBarWithJustMenuOrBackButtonIconText(
//       {@required BuildContext? context,
//       @required String? title,
//       @required String? icon,
//       @required Function? onPress}) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
//             child: TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: sizes!.widthRatio * 30),
//             child: SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: GestureDetector(
//                 onTap: () {
//                   if (onPress != null) {
//                     onPress.call();
//                   }
//                 },
//                 child: Image.asset(
//                   icon!,
//                   // height: sizes!.heightRatio * 32.0,
//                   // width: sizes!.widthRatio * 32.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getAppBarTextWithoutContainer(
//       {@required BuildContext? context,
//       @required String? title,
//       @required String? icon,
//       @required Function? onPress}) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
//             child: TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: sizes!.widthRatio * 30),
//             child: SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: CommonWidgets.customMenuButton(
//                   context: context,
//                   icon: icon ?? "assets/png/edit_icon@2x.png",
//                   onPress: () {
//                     if (onPress != null) {
//                       onPress.call();
//                     }
//                   }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget getAppBarWithTitleAndBackButton(
//       {@required BuildContext? context,
//       @required String? title,
//       @required String? icon,
//       @required Function? onPress}) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(left: sizes!.widthRatio * 30.0),
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onPress != null) {
//                       onPress.call();
//                     }
//                   },
//                   child: Image.asset(icon!)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 18,
//             ),
//             TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget getAppBarWithTitleBackButtonAndUserIcon({
//     @required BuildContext? context,
//     @required String? title,
//     @required String? icon,
//     @required String? userIcon,
//     @required Function? onPress,
//   }) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 2,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(left: sizes!.widthRatio * 30.0),
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onPress != null) {
//                       onPress.call();
//                     }
//                   },
//                   child: Image.asset(icon!)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 10,
//             ),
//             SizedBox(
//                 height: sizes!.heightRatio * 32,
//                 width: sizes!.widthRatio * 32,
//                 child: Image.asset(
//                   userIcon ?? "assets/png/avatar_user_icon@2x.png",
//                   height: sizes!.heightRatio * 40.0,
//                   width: sizes!.widthRatio * 40.0,
//                 )),
//             SizedBox(
//               width: sizes!.widthRatio * 10,
//             ),
//             TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget getAppBarWithoutContainerTitleAndBackButton(
//       {@required BuildContext? context,
//       @required String? title,
//       @required String? icon,
//       @required Function? onPress}) {
//     return Padding(
//       padding: EdgeInsets.only(left: sizes!.widthRatio * 30.0),
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(
//             height: sizes!.heightRatio * 32,
//             width: sizes!.widthRatio * 32,
//             child: GestureDetector(
//                 onTap: () {
//                   if (onPress != null) {
//                     onPress.call();
//                   }
//                 },
//                 child: Image.asset(icon!)),
//           ),
//           SizedBox(
//             width: sizes!.widthRatio * 18,
//           ),
//           TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//               color: AppColors.blackTextColor, lines: 1),
//         ],
//       ),
//     );
//   }
//
//   static Widget getAppBarWithSimpleDesignAndText({
//     @required BuildContext? context,
//     @required String? title,
//   }) {
//     return Container(
//       height: sizes!.heightRatio * 60.0,
//       decoration: const BoxDecoration(
//         color: AppColors.whiteTextColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.cardShadowColor,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: sizes!.widthRatio * 30),
//             child: TextView.getMediumText18(title ?? "", Assets.poppinsMedium,
//                 color: AppColors.blackTextColor, lines: 1),
//           ),
//         ],
//       ),
//     );
//   }
//
//   static Widget customMenuButton(
//       {BuildContext? context,
//       @required dynamic icon,
//       @required Function? onPress}) {
//     return GestureDetector(
//       onTap: () {
//         if (onPress != null) {
//           onPress.call();
//         }
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(
//             horizontal: sizes!.widthRatio * 5,
//             vertical: sizes!.heightRatio * 5),
//         width: sizes!.widthRatio * 40,
//         height: sizes!.heightRatio * 40,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: AppColors.backButtonColor,
//             width: 0.25,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           color: AppColors.backButtonColor,
//           boxShadow: const [
//             BoxShadow(
//               color: AppColors.backButtonColor,
//               blurRadius: 18,
//               offset: Offset(0, 0),
//             ),
//           ],
//         ),
//         child: Image.asset(
//           icon,
//           // height: sizes!.heightRatio * 32.0,
//           // width: sizes!.widthRatio * 32.0,
//         ),
//       ),
//     );
//   }
//
//   static Widget homeScreenOfferContainer({
//     @required String? imageUrl,
//     @required String? title,
//     @required String? body,
//     @required Function? onPress,
//   }) {
//     bool isImageUrl = Uri.tryParse(imageUrl!)?.hasAbsolutePath ?? false;
//
//     return GestureDetector(
//       onTap: () {
//         if (onPress != null) {
//           onPress.call();
//         }
//       },
//       child: Container(
//         height: sizes!.heightRatio * 141,
//         width: sizes!.widthRatio * 296,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15.0),
//             image: DecorationImage(
//               image: isImageUrl
//                   ? NetworkImage(imageUrl)
//                   : AssetImage(imageUrl) as ImageProvider,
//               fit: BoxFit.fill,
//             )),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: sizes!.heightRatio * 33,
//               ),
//               TextView.getRegular13TextHeavy(
//                 title ?? "New in Maktabq App Offer",
//                 Assets.latoRegular,
//                 color: AppColors.whiteTextColor,
//                 lines: 1,
//               ),
//               SizedBox(
//                 height: sizes!.heightRatio * 8,
//               ),
//               TextView.getRegular13Text(
//                   body ??
//                       "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//                   Assets.latoRegular,
//                   color: AppColors.whiteTextColor,
//                   textAlign: TextAlign.start,
//                   lines: 2)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   static String getFormattedTime({@required String? date}) {
//     DateTime newDate = DateTime.parse(date!);
//     // final timeOffset = newDate.add(Duration(hours: 1,seconds: 30));
//     // String formattedTime=DateTimeFormat.format(timeOffset, format: 'h:i A');
//     String formattedTime = DateTimeFormat.format(newDate, format: 'h:i A');
//     return formattedTime;
//   }
//
//   static Widget getStartButton(String text, {Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.whiteTextColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(4)),
//         color: AppColors.pmGetStartedButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.pmGetStartedButtonColor,
//             blurRadius: 4, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: Assets.poppinsMedium,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getAppBarCustomBackButton(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigator.of(context).pop();
//         Navigator.pop(context);
//       },
//       child: Container(
//         width: sizes!.widthRatio * 30,
//         height: sizes!.heightRatio * 30,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: AppColors.backButtonColor,
//             width: 0.25,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           color: AppColors.backButtonColor,
//           boxShadow: const [
//             BoxShadow(
//               color: AppColors.backButtonColor,
//               blurRadius: 2,
//               offset: Offset(0, 0),
//             ),
//           ],
//         ),
//         child: Image.asset(
//           "assets/png/non_bg_back_btn@2x.png",
//           // height: sizes!.heightRatio * 14.68,
//           // width: sizes!.widthRatio * 8.8,
//         ),
//       ),
//     );
//   }
//
//   static Widget mainButton(String text, {Function? onPress}) {
//     return Container(
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.buttonBlue,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.buttonBlue,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.buttonBlueShadow,
//             blurRadius: 8, // 12
//             offset: Offset(0, 1), // 3
//           ),
//         ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 15,
//             fontFamily: Assets.latoBold,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget smallButton(
//     String? text,
//     double width,
//     double height,
//     String icon, {
//     String? fontFamily,
//     double? fontSize,
//     @required Color? textColor,
//     @required bool? selected,
//     @required Function? onPress,
//     @required Function? onPressCategory,
//   }) {
//     if (fontSize != null) {
//       fontSize = sizes!.fontRatio * fontSize;
//     }
//
//     // Validate Image URL
//     bool isImageUrl = Uri.tryParse(icon)?.hasAbsolutePath ?? false;
//     // debugPrint("isImageUrl::$isImageUrl");
//     selected ??= false;
//
//     return GestureDetector(
//       onTap: () => onPressCategory!(),
//       child: Container(
//         //padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 12.5, vertical: sizes!.heightRatio * 1),
//         width: sizes!.widthRatio * width,
//         height: sizes!.heightRatio * height,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: AppColors.smallButtonBorder,
//             width: 0.25,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(18)),
//           color: AppColors.smallButton,
//           // boxShadow: [
//           //   BoxShadow(
//           //     color: AppColors.smallButtonShadow,
//           //     blurRadius: 18,
//           //     offset: Offset(0, 0),
//           //   ),
//           // ],
//         ),
//         child: TextButton(
//           onPressed: () {
//             if (onPress != null) {
//               onPress.call();
//             }
//           },
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: sizes!.widthRatio * 20.13,
//                 height: sizes!.heightRatio * 20.13,
//                 child: isImageUrl
//                     ? Image.network(icon)
//                     : Image.asset(icon), //Image.asset(icon),
//               ),
//               SizedBox(
//                 width: sizes!.widthRatio * 10,
//               ),
//               Text(
//                 text!,
//                 style: TextStyle(
//                   color: selected
//                       ? AppColors.smallButtonText
//                       : AppColors.greyButtonTextColor,
//                   fontSize: fontSize ?? sizes!.fontRatio * 14,
//                   fontFamily: fontFamily ?? Assets.latoRegular,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget offerSmallButton(String? text, String icon,
//       {String? fontFamily,
//       double? fontSize,
//       @required Color? textColor,
//       @required bool? selected,
//       @required Function? onPress}) {
//     if (fontSize != null) {
//       fontSize = sizes!.fontRatio * fontSize;
//     }
//
//     selected ??= false;
//
//     // Validate Image URL
//     bool isImageUrl = Uri.tryParse(icon)?.hasAbsolutePath ?? false;
//
//     return Container(
//       padding: EdgeInsets.symmetric(
//           horizontal: sizes!.widthRatio * 12.5,
//           vertical: sizes!.heightRatio * 1),
//       //width: sizes!.widthRatio * width,
//       //height: sizes!.heightRatio * height,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.smallButtonBorder,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.smallButton,
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: AppColors.smallButtonShadow,
//         //     blurRadius: 18,
//         //     offset: Offset(0, 0),
//         //   ),
//         // ],
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: sizes!.widthRatio * 20.13,
//               height: sizes!.heightRatio * 20.13,
//               child: isImageUrl ? Image.network(icon) : Image.asset(icon),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 10,
//             ),
//             Text(
//               text!,
//               style: TextStyle(
//                 color: selected
//                     ? AppColors.smallButtonText
//                     : AppColors.greyButtonTextColor,
//                 fontSize: fontSize ?? sizes!.fontRatio * 14,
//                 fontFamily: fontFamily ?? Assets.latoRegular,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget featureSmallButton(
//       String? text, double width, double height, String? icon,
//       {String? fontFamily,
//       double? fontSize,
//       @required bool? selected,
//       @required Function? onPress}) {
//     if (fontSize != null) {
//       fontSize = sizes!.fontRatio * fontSize;
//     }
//
//     selected ??= false;
//
//     return Container(
//       //padding: EdgeInsets.symmetric(
//       //horizontal: sizes!.widthRatio * 5, vertical: sizes!.heightRatio * 1),
//       //margin: EdgeInsets.symmetric(
//       //horizontal: sizes!.widthRatio * 100, vertical: sizes!.heightRatio * 0),
//       width: sizes!.widthRatio * width,
//       height: sizes!.heightRatio * height,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.smallButtonBorder,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.smallButton,
//       ),
//       child: TextButton(
//         onPressed: () {
//           if (onPress != null) {
//             onPress.call();
//           }
//         },
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: sizes!.widthRatio * 20.13,
//               height: sizes!.heightRatio * 20.13,
//               child: Image.network(icon ?? ""),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 10,
//             ),
//             Text(
//               text ?? "Loading",
//               style: TextStyle(
//                 color: selected
//                     ? AppColors.smallButtonText
//                     : AppColors.greyButtonTextColor,
//                 fontSize: fontSize ?? sizes!.fontRatio * 14,
//                 fontFamily: fontFamily ?? Assets.latoRegular,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget featureChip(
//       {@required String? icon,
//       @required String? text,
//       @required bool? selected,
//       @required Function? onPress}) {
//     selected ??= false;
//
//     return GestureDetector(
//       onTap: () {
//         if (onPress != null) {
//           onPress.call();
//         }
//       },
//       child: Chip(
//         labelPadding: const EdgeInsets.all(2.0),
//         avatar: Image.network(icon ?? ""),
//         label: Text(
//           text ?? "",
//           style: TextStyle(
//             color: selected
//                 ? AppColors.smallButtonText
//                 : AppColors.greyButtonTextColor,
//             fontSize: sizes!.fontRatio * 12,
//             fontFamily: Assets.poppinsRegular,
//           ),
//         ),
//         backgroundColor: AppColors.whiteTextColor,
//         elevation: 10.0,
//         shadowColor: AppColors.featuresChipShadow,
//         padding: const EdgeInsets.all(8.0),
//       ),
//     );
//   }
//
//   static Widget loginText(
//       {@required String? text,
//       @required double? fontSize,
//       @required Color? color}) {
//     return Text(
//       text!,
//       style: TextStyle(
//         color: color,
//         fontFamily: Assets.poppinsRegular,
//         fontSize: sizes!.fontRatio * fontSize!,
//       ),
//     );
//   }
//
//   static Widget additionalNoteText(
//       {@required String? text,
//       @required double? fontSize,
//       @required Color? color}) {
//     return Text(
//       text!,
//       style: TextStyle(
//           color: color,
//           fontFamily: Assets.poppinsMedium,
//           fontSize: sizes!.fontRatio * 18.0,
//           fontWeight: FontWeight.bold),
//     );
//   }
//
//   static Widget customTextField(IconData icon, bool isPassword,
//       {String? placeHolder,
//       @required dynamic controller,
//       @required Color? iconColor,
//       @required bool? isValid,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 20, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid ? AppColors.smallButtonBorder : AppColors.redColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: TextField(
//           obscureText: isPassword,
//           controller: controller,
//           keyboardType: keyboardType,
//           decoration: InputDecoration(
//             hintText: placeHolder ?? "",
//             hintStyle: const TextStyle(
//                 color: AppColors.lightGreyTextColor,
//                 fontFamily: Assets.latoLight,
//                 fontSize: 14),
//             contentPadding: EdgeInsets.only(
//                 bottom: sizes!.heightRatio * 8, top: sizes!.heightRatio * 8),
//             border: InputBorder.none,
//             suffixIcon: icon != null
//                 ? Icon(
//                     icon,
//                     color: iconColor,
//                   )
//                 : null,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithCustomContainerIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required Function? onIconPress,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.pmTextFieldUnSelectedBorderColor
//               : AppColors.pmTextFieldBorderColor,
//           //AppColors.textFieldBorderColor,
//           width: isValid ? 1 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.pmTextFieldBorderShadowColor,
//             blurRadius: 32, //18
//             offset: Offset(0, 12),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onIconPress != null) {
//                       onIconPress.call();
//                     }
//                   },
//                   child: Image.asset(icon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsRegular,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 12,
//                         top: sizes!.heightRatio * 12),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customFeedbackTextFieldWithIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required Function? onIconPress,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 100,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.pmTextFieldUnSelectedBorderColor
//               : AppColors.pmTextFieldBorderColor,
//           //AppColors.textFieldBorderColor,
//           width: isValid ? 1 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.pmTextFieldBorderShadowColor,
//             blurRadius: 32, //18
//             offset: Offset(0, 12),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: sizes!.heightRatio * 10.0),
//               child: SizedBox(
//                 height: sizes!.heightRatio * 29,
//                 width: sizes!.widthRatio * 36,
//                 child: GestureDetector(
//                     onTap: () {
//                       if (onIconPress != null) {
//                         onIconPress.call();
//                       }
//                     },
//                     child: Image.asset(icon)),
//               ),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   maxLines: 5,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsRegular,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 12,
//                         top: sizes!.heightRatio * 12),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget homeSearchBarWithDoubleIcons(
//       {@required String? placeHolder,
//       @required dynamic startIcon,
//       @required dynamic endIcon,
//       @required Function? onStartIconPress,
//       @required Function? onEndIconPress,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.pmTextFieldBorderColor,
//           //AppColors.textFieldBorderColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.pmTextFieldBorderShadowColor,
//             blurRadius: 32, //18
//             offset: Offset(0, 12),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               width: sizes!.widthRatio * 5,
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 13.1,
//               width: sizes!.widthRatio * 13.1,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onStartIconPress != null) {
//                       onStartIconPress.call();
//                     }
//                   },
//                   child: Image.asset(startIcon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 5,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.pmSearchBarTextColor,
//                         fontFamily: Assets.poppinsRegular,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 12,
//                         top: sizes!.heightRatio * 12),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 22,
//               width: sizes!.widthRatio * 22,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onEndIconPress != null) {
//                       onEndIconPress.call();
//                     }
//                   },
//                   child: Image.asset(endIcon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 6,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget mapSearchBarWithDoubleIcons(
//       {@required String? placeHolder,
//       @required dynamic startIcon,
//       @required dynamic endIcon,
//       @required Function? onStartIconPress,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.pmTextFieldBorderColor,
//           //AppColors.textFieldBorderColor,
//           width: 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(16)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.pmTextFieldBorderShadowColor,
//             blurRadius: 32, //18
//             offset: Offset(0, 12),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 20,
//               width: sizes!.widthRatio * 20,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onStartIconPress != null) {
//                       onStartIconPress.call();
//                     }
//                   },
//                   child: Image.asset(startIcon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 5,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.pmSearchBarTextColor,
//                         fontFamily: Assets.poppinsRegular,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 12,
//                         top: sizes!.heightRatio * 12),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customPhoneNumberTextFieldWithMaxLimitCustomContainerIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required Function? onIconPress,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.textFieldBorderColor
//               : AppColors.redColor, //AppColors.textFieldBorderColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onIconPress != null) {
//                       onIconPress.call();
//                     }
//                   },
//                   child: Image.asset(icon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   maxLength: 15,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 2,
//                         top: sizes!.heightRatio * 15),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldReadOnlyWithCustomContainerIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required Function? onIconPress,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.textFieldBorderColor
//               : AppColors.redColor, //AppColors.textFieldBorderColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onIconPress != null) {
//                       onIconPress.call();
//                     }
//                   },
//                   child: Image.asset(icon)),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   readOnly: true,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 15,
//                         top: sizes!.heightRatio * 12),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithCustomContainerIconWidth(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic width,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * width,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.textFieldBorderColor
//               : AppColors.redColor, //AppColors.textFieldBorderColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: Image.asset(icon),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 15,
//                         top: sizes!.heightRatio * 15),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithCustomContainerWithoutIconWidth(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic width,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * width,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.textFieldBorderColor
//               : AppColors.redColor, //AppColors.textFieldBorderColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             // SizedBox(
//             //   height: sizes!.heightRatio * 29,
//             //   width: sizes!.widthRatio * 36,
//             //   child: Image.asset(icon),
//             // ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 15,
//                         top: sizes!.heightRatio * 15),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithRightSideIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required bool? isValid,
//       @required Function? onIconPress,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.getStartedButtonColor,
//           //AppColors.textFieldBorderColor,
//           width: 1.5,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               width: sizes!.widthRatio * 15,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 15,
//                         top: sizes!.heightRatio * 15),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 15,
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onIconPress != null) {
//                       onIconPress.call();
//                     }
//                   },
//                   child: Image.asset(icon)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithDropdownRightSideIcon({
//     @required String? placeHolder,
//     @required dynamic icon,
//     @required bool? isValid,
//     @required Function? onIconPress,
//     @required TextEditingController? controller,
//     @required dynamic keyboardType,
//     @required String? selectedCategory,
//     @required Function? updateSelectedCategory,
//     @required List<String>? categories,
//     @required String? hint,
//   }) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.getStartedButtonColor,
//           //AppColors.textFieldBorderColor,
//           width: 1.5,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: DropdownButton<String>(
//             hint: Text("$hint"),
//             value: selectedCategory,
//             isExpanded: true,
//             icon: Icon(
//               Icons.keyboard_arrow_down,
//               color: AppColors.getStartedButtonColor,
//               size: sizes!.heightRatio * .035,
//             ),
//             underline: SizedBox(),
//             onChanged: (String? newValue) {
//               if (updateSelectedCategory != null) {
//                 updateSelectedCategory(newValue);
//               }
//             },
//             items: categories?.map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(
//                   value,
//                   style: TextStyle(
//                     color: AppColors.getStartedButtonColor,
//                     fontFamily: Assets.poppinsMedium,
//                     fontSize: sizes!.fontRatio * 14.0,
//                   ),
//                 ),
//               );
//             }).toList()),
//       ),
//     );
//   }
//
//   static Widget customTextFieldWithMultipleLinesCustomContainerIcon(
//       {@required String? placeHolder,
//       @required dynamic icon,
//       @required bool? isValid,
//       @required TextEditingController? controller,
//       @required dynamic keyboardType}) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 90,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid
//               ? AppColors.textFieldBorderColor
//               : AppColors.redColor, //AppColors.textFieldBorderColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 2, //18
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Padding(
//           padding: EdgeInsets.only(bottom: sizes!.heightRatio * 40),
//           child: Row(
//             children: [
//               SizedBox(
//                 height: sizes!.heightRatio * 29,
//                 width: sizes!.widthRatio * 36,
//                 child: Image.asset(icon),
//               ),
//               SizedBox(
//                 width: sizes!.widthRatio * 13,
//               ),
//               Expanded(
//                 child: TextField(
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   minLines: 1,
//                   maxLines: 5,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 10,
//                         top: sizes!.heightRatio * 10),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget getTextFieldDemoRemarks({
//     @required bool? isPassword,
//     @required TextEditingController? textEditingController,
//     @required String? hintText,
//   }) {
//     return Container(
//       height: sizes!.height * 0.2,
//       width: sizes!.width,
//       padding: EdgeInsets.only(
//           left: sizes!.width * 0.05,
//           right: sizes!.width * 0.05,
//           top: sizes!.width * 0.02),
//       decoration: BoxDecoration(
//           color: AppColors.whiteTextColor,
//           borderRadius: BorderRadius.circular(25),
//           boxShadow: const [
//             BoxShadow(
//                 color: AppColors.lightGreyTextColor,
//                 blurRadius: 2,
//                 offset: Offset(1, 1))
//           ]),
//       child: SizedBox(
//         width: sizes!.width * 0.7,
//         child: TextField(
//           style: TextStyle(
//               decoration: TextDecoration.none,
//               fontFamily: Assets.latoLight,
//               fontSize: sizes!.regularFontSize,
//               color: AppColors.smallButtonText),
//           keyboardType: TextInputType.multiline,
//           minLines: 1,
//           //Normal textInputField will be displayed
//           maxLines: 10,
//           textAlignVertical: TextAlignVertical.top,
//           controller: textEditingController,
//           // readOnly: true,
//           decoration: InputDecoration(
//             // prefixIcon: Image(image: AssetImage('$leftIcon')) ,
//             hintText: hintText,
//             border: InputBorder.none,
//             hintStyle: TextStyle(
//               decoration: TextDecoration.none,
//               fontSize: sizes!.regularFontSize,
//               color: AppColors.smallButtonText,
//               fontFamily: Assets.latoLight,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // static Widget customTextFieldWithPasswordCustomContainerIcon(
//   //     {@required String? placeHolder,
//   //     @required dynamic icon,
//   //     @required bool? hidePassword,
//   //     @required bool? isValid,
//   //     @required Function? clickIcon,
//   //     @required TextEditingController? controller,
//   //     @required dynamic keyboardType}) {
//   //   isValid ??= true;
//   //
//   //   hidePassword ??= true;
//   //
//   //   return Container(
//   //     padding: EdgeInsets.only(
//   //         left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//   //     width: sizes!.widthRatio * 325,
//   //     height: sizes!.heightRatio * 45,
//   //     decoration: BoxDecoration(
//   //       border: Border.all(
//   //         color: isValid
//   //             ? AppColors.pmTextFieldUnSelectedBorderColor
//   //             : AppColors.pmTextFieldBorderColor,
//   //         //AppColors.textFieldBorderColor,
//   //         width: isValid ? 1.0 : 1,
//   //       ),
//   //       borderRadius: const BorderRadius.all(Radius.circular(6)),
//   //       color: AppColors.whiteTextColor,
//   //       boxShadow: const [
//   //         BoxShadow(
//   //           color: AppColors.pmTextFieldBorderShadowColor,
//   //           blurRadius: 32.0,
//   //           offset: Offset(0, 12),
//   //         ),
//   //       ],
//   //     ),
//   //     child: Center(
//   //       child: Row(
//   //         children: [
//   //           SizedBox(
//   //             height: sizes!.heightRatio * 29,
//   //             width: sizes!.widthRatio * 36,
//   //             child: Image.asset(icon),
//   //           ),
//   //           SizedBox(
//   //             width: sizes!.widthRatio * 13,
//   //           ),
//   //           Expanded(
//   //             child: TextField(
//   //               obscureText: hidePassword,
//   //               controller: controller,
//   //               keyboardType: keyboardType,
//   //               decoration: InputDecoration(
//   //                 hintText: placeHolder,
//   //                 hintStyle: const TextStyle(
//   //                     color: AppColors.lightGreyTextColor,
//   //                     fontFamily: Assets.poppinsLight,
//   //                     fontSize: 14),
//   //                 contentPadding: EdgeInsets.only(
//   //                     bottom: sizes!.heightRatio * 15,
//   //                     top: sizes!.heightRatio * 15),
//   //                 border: InputBorder.none,
//   //                 suffixIcon: IconButton(
//   //                   icon: Icon(
//   //                     hidePassword
//   //                         ? Icons.visibility_outlined
//   //                         : Icons.visibility_off_outlined,
//   //                     color: AppColors.pmGetStartedButtonColor,
//   //                   ),
//   //                   onPressed: () {
//   //                     if (clickIcon != null) {
//   //                       clickIcon.call();
//   //                     }
//   //                   },
//   //                 ),
//   //               ),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
//
//   static Widget customTextFieldCardWithIcon({
//     @required String? placeHolder,
//     @required dynamic icon,
//     @required TextEditingController? controller,
//     @required bool? isValid,
//     @required dynamic keyboardType,
//   }) {
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 8, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 140,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: //AppColors.textFieldBorderColor,
//               isValid ? AppColors.textFieldBorderColor : AppColors.redColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(6)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 29,
//               width: sizes!.widthRatio * 36,
//               child: Image.asset(icon),
//             ),
//             SizedBox(
//               width: sizes!.widthRatio * 13,
//             ),
//             Expanded(
//               child: Center(
//                 child: TextField(
//                   obscureText: false,
//                   controller: controller,
//                   keyboardType: keyboardType,
//                   decoration: InputDecoration(
//                     hintText: placeHolder,
//                     hintStyle: const TextStyle(
//                         color: AppColors.lightGreyTextColor,
//                         fontFamily: Assets.poppinsLight,
//                         fontSize: 14),
//                     contentPadding: EdgeInsets.only(
//                         bottom: sizes!.heightRatio * 15,
//                         top: sizes!.heightRatio * 15),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldPassword(IconData icon, bool isPassword,
//       {String? placeHolder,
//       @required dynamic controller,
//       @required bool? hidePassword,
//       @required Function? clickIcon,
//       @required Color? iconColor,
//       @required bool? isValid}) {
//     hidePassword ??= true;
//     isValid ??= true;
//
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 20, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: isValid ? AppColors.smallButtonBorder : AppColors.redColor,
//           width: isValid ? 0.25 : 1,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Center(
//         child: TextField(
//           obscureText: hidePassword,
//           controller: controller,
//           decoration: InputDecoration(
//             hintText: placeHolder ?? "",
//             hintStyle: const TextStyle(
//                 color: AppColors.lightGreyTextColor,
//                 fontFamily: Assets.latoLight,
//                 fontSize: 14),
//             contentPadding: EdgeInsets.only(
//                 bottom: sizes!.heightRatio * 8, top: sizes!.heightRatio * 8),
//             border: InputBorder.none,
//             suffixIcon: IconButton(
//               icon: Icon(
//                 hidePassword
//                     ? Icons.visibility_outlined
//                     : Icons.visibility_off_outlined,
//                 color: AppColors.appTheme,
//               ),
//               onPressed: () {
//                 if (clickIcon != null) {
//                   clickIcon.call();
//                 }
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget customTextFieldNoIcon(bool isPassword,
//       {String? placeHolder, @required dynamic controller}) {
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 20, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.smallButtonBorder,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: TextField(
//         obscureText: isPassword,
//         controller: controller,
//         decoration: InputDecoration(
//           hintText: placeHolder ?? "",
//           hintStyle: const TextStyle(
//               color: AppColors.lightGreyTextColor,
//               fontFamily: Assets.latoLight,
//               fontSize: 14),
//           contentPadding: EdgeInsets.only(bottom: sizes!.heightRatio * 10),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
//
//   static Widget customSmallTextField(
//       {String? placeHolder,
//       TextEditingController? controller,
//       double? height,
//       double? width}) {
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 20, right: sizes!.widthRatio * 7),
//       width: width ?? sizes!.widthRatio * 130,
//       height: height ?? sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.smallButtonBorder,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: placeHolder ?? "",
//           hintStyle: const TextStyle(
//               color: AppColors.lightGreyTextColor,
//               fontFamily: Assets.latoLight,
//               fontSize: 14),
//           contentPadding: EdgeInsets.only(bottom: sizes!.heightRatio * 14),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
//
//   // static Widget topRow({@required BuildContext? context}) {
//   //   return Row(
//   //     children: [
//   //       CommonWidgets.customBackButton(context!),
//   //       SizedBox(
//   //         width: sizes!.largePadding,
//   //       ),
//   //       TextView.getExtraLargeText('Event Detail', Assets.latoBlack,
//   //           color: AppColors.loginInfo, lines: 1),
//   //     ],
//   //   );
//   // }
//
//   static Widget getCustomAppBarBackButton(BuildContext? context,
//       {@required dynamic icon, @required Function? onPress}) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//           horizontal: sizes!.widthRatio * 5, vertical: sizes!.heightRatio * 5),
//       width: sizes!.widthRatio * 30,
//       height: sizes!.heightRatio * 30,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.backButtonColor,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//         color: AppColors.backButtonColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.backButtonColor,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(left: sizes!.widthRatio * 30.0),
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               height: sizes!.heightRatio * 32,
//               width: sizes!.widthRatio * 32,
//               child: GestureDetector(
//                   onTap: () {
//                     if (onPress != null) {
//                       onPress.call();
//                     }
//                   },
//                   child: Image.asset(icon)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // static Widget getAppBarCustomBackButton(BuildContext context) {
//   //   return GestureDetector(
//   //     onTap: () {
//   //       // Navigator.of(context).pop();
//   //       Navigator.pop(context);
//   //     },
//   //     child: Container(
//   //       width: sizes!.widthRatio * 30,
//   //       height: sizes!.heightRatio * 30,
//   //       decoration: BoxDecoration(
//   //         border: Border.all(
//   //           color: AppColors.backButtonColor,
//   //           width: 0.25,
//   //         ),
//   //         borderRadius: const BorderRadius.all(Radius.circular(10)),
//   //         color: AppColors.backButtonColor,
//   //         boxShadow: const [
//   //           BoxShadow(
//   //             color: AppColors.backButtonColor,
//   //             blurRadius: 2,
//   //             offset: Offset(0, 0),
//   //           ),
//   //         ],
//   //       ),
//   //       child: Image.asset(
//   //         "assets/png/back_btn_icon@3x.png",
//   //         // height: sizes!.heightRatio * 14.68,
//   //         // width: sizes!.widthRatio * 8.8,
//   //       ),
//   //     ),
//   //   );
//   // }
//
//   static Widget getAppBarCustomTwoBackButton(BuildContext context,
//       {@required Function? onSkipPress}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           width: sizes!.widthRatio * 30,
//           height: sizes!.heightRatio * 30,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: AppColors.backButtonColor,
//               width: 0.25,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(10)),
//             color: AppColors.backButtonColor,
//             boxShadow: const [
//               BoxShadow(
//                 color: AppColors.backButtonColor,
//                 blurRadius: 2,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           child: Image.asset(
//             "assets/png/back_btn_icon@2x.png",
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             if (onSkipPress != null) {
//               onSkipPress.call();
//             }
//           },
//           child: Padding(
//             padding: CommonPadding.getCommonPaddingLeftAndRightWidth30,
//             child: TextView.getSubHeadingTextWith15("Skip", Assets.poppinsLight,
//                 color: AppColors.subHeadingTextColor,
//                 lines: 1,
//                 fontWeight: FontWeight.normal),
//           ),
//         )
//       ],
//     );
//   }
//
//   static Widget customBackButton2({@required Function? onPress}) {
//     return GestureDetector(
//       onTap: () {
//         onPress!.call();
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(
//             horizontal: sizes!.widthRatio * 5,
//             vertical: sizes!.heightRatio * 5),
//         width: sizes!.widthRatio * 30,
//         height: sizes!.heightRatio * 30,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: AppColors.smallButtonBorder,
//             width: 0.25,
//           ),
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           color: AppColors.whiteTextColor,
//           boxShadow: const [
//             BoxShadow(
//               color: AppColors.smallButtonShadow,
//               blurRadius: 18,
//               offset: Offset(0, 0),
//             ),
//           ],
//         ),
//         child: Image.asset(
//           Assets.backIcon,
//         ),
//       ),
//     );
//   }
//
//   static Widget getAppBarText(BuildContext context, {@required String? text}) {
//     return Container(
//       padding: EdgeInsets.all(sizes!.widthRatio * 20),
//       child: Row(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(
//                   horizontal: sizes!.widthRatio * 5,
//                   vertical: sizes!.heightRatio * 5),
//               width: sizes!.widthRatio * 30,
//               height: sizes!.heightRatio * 30,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: AppColors.smallButtonBorder,
//                   width: 0.25,
//                 ),
//                 borderRadius: const BorderRadius.all(Radius.circular(10)),
//                 color: AppColors.whiteTextColor,
//                 boxShadow: const [
//                   BoxShadow(
//                     color: AppColors.smallButtonShadow,
//                     blurRadius: 18,
//                     offset: Offset(0, 0),
//                   ),
//                 ],
//               ),
//               child: Image.asset(
//                 Assets.backIcon,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: sizes!.width * 0.05,
//           ),
//           TextView.getExtraLargeText(text ?? "", Assets.latoBlack,
//               color: AppColors.blackTextColor, lines: 1),
//         ],
//       ),
//     );
//   }
//
//   static Widget numberTextField() {
//     return Container(
//       padding: EdgeInsets.only(
//           left: sizes!.widthRatio * 20, right: sizes!.widthRatio * 7),
//       width: sizes!.widthRatio * 325,
//       height: sizes!.heightRatio * 45,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: AppColors.smallButtonBorder,
//           width: 0.25,
//         ),
//         borderRadius: const BorderRadius.all(Radius.circular(18)),
//         color: AppColors.whiteTextColor,
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.smallButtonShadow,
//             blurRadius: 18,
//             offset: Offset(0, 0),
//           ),
//         ],
//       ),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: "(303)148-6535",
//           hintStyle: const TextStyle(
//               color: AppColors.lightGreyTextColor,
//               fontFamily: Assets.latoLight,
//               fontSize: 14),
//           contentPadding: EdgeInsets.only(bottom: sizes!.heightRatio * 16),
//           border: InputBorder.none,
//         ),
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//       ),
//     );
//   }
//
//   static Widget customCheckbox(bool isCheck) {
//     return Row(
//       children: [
//         Checkbox(
//           value: true,
//           onChanged: (isCheck) {},
//           activeColor: AppColors.buttonBlue,
//         ),
//         CommonWidgets.loginText(
//             text: "Agree With Term and Services",
//             fontSize: sizes!.fontRatio * 13)
//       ],
//     );
//   }
//
//   static Widget alreadyAccountRow(
//       {String? text1, String? text2, Function? onPress}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CommonWidgets.loginText(text: text1!, fontSize: 15.0),
//         TextButton(
//           onPressed: () {
//             onPress!.call();
//           },
//           child: Text(
//             text2!,
//             style: const TextStyle(
//               color: AppColors.appTheme,
//               fontSize: 15,
//               fontFamily: Assets.latoBold,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   // static Widget customSearchBar(BuildContext context,
//   //     {String? hint,
//   //     @required dynamic controller,
//   //     @required Function? onPress}) {
//   //   return Container(
//   //     width: sizes!.widthRatio * 324,
//   //     height: sizes!.heightRatio * 50,
//   //     decoration: BoxDecoration(
//   //       color: AppColors.whiteTextColor,
//   //       borderRadius: BorderRadius.circular(25),
//   //       boxShadow: [
//   //         BoxShadow(
//   //             color: AppColors.lightGreyTextColor,
//   //             blurRadius: 2,
//   //             offset: Offset(1, 1))
//   //       ],
//   //     ),
//   //     child: Row(
//   //       children: [
//   //         IconButton(
//   //           onPressed: () {
//   //             if (onPress != null) {
//   //               onPress.call();
//   //             }
//   //           },
//   //           icon: ImageIcon(
//   //             AssetImage(Assets.searchIcon),
//   //             color: AppColors.blueHomeColor,
//   //           ),
//   //           // Icon(
//   //           //   Icons.search,
//   //           //   color: AppColors.blueHomeColor,
//   //           // )
//   //         ),
//   //         Container(
//   //           width: sizes!.widthRatio * 194,
//   //           child: TextField(
//   //             controller: controller,
//   //             decoration: InputDecoration(
//   //                 hintText: hint,
//   //                 hintStyle: TextStyle(color: AppColors.blackTextColor),
//   //                 border: InputBorder.none),
//   //           ),
//   //         ),
//   //         Padding(
//   //           padding: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 8.0),
//   //           child: VerticalDivider(
//   //             color: Colors.grey,
//   //           ),
//   //         ),
//   //         IconButton(
//   //             onPressed: () {
//   //               Navigator.push(
//   //                   context,
//   //                   PageRouteBuilder(
//   //                       transitionDuration: Duration(milliseconds: 500),
//   //                       transitionsBuilder:
//   //                           (context, animation, animationTime, child) {
//   //                         animation = CurvedAnimation(
//   //                             parent: animation, curve: Curves.bounceInOut);
//   //                         return ScaleTransition(
//   //                           alignment: Alignment.center,
//   //                           scale: animation,
//   //                           child: child,
//   //                         );
//   //                       },
//   //                       pageBuilder: (context, animation, animationTime) {
//   //                         return FilterScreen();
//   //                       }));
//   //             },
//   //             icon: Icon(
//   //               Icons.filter_alt_outlined,
//   //               color: AppColors.blueHomeColor,
//   //             ))
//   //       ],
//   //     ),
//   //   );
//   // }
//
//   static Widget categoryTabs(
//       {@required String? image,
//       @required String? text,
//       @required Function? onPress,
//       @required bool? selectedTab}) {
//     bool isImageUrl = Uri.tryParse(image!)?.hasAbsolutePath ?? false;
//
//     selectedTab ??= false;
//
//     return Column(
//       children: [
//         Container(
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: AppColors.whiteTextColor,
//                 boxShadow: [
//                   BoxShadow(
//                       color: selectedTab
//                           ? AppColors.lightGreyTextColor
//                           : AppColors.lightGreyBlueTextColor,
//                       blurRadius: 2,
//                       offset: const Offset(1, 1))
//                 ]),
//             child: TextButton(
//               onPressed: () {
//                 if (onPress != null) {
//                   onPress.call();
//                 }
//               },
//               child: isImageUrl ? Image.network(image) : Image.asset(image),
//             )),
//         const SizedBox(
//           height: 5,
//         ),
//         TextView.getRegularText(text, Assets.latoRegular,
//             color: selectedTab
//                 ? AppColors.blackTextColor
//                 : AppColors.lightGreyBlueTextColor,
//             lines: 1)
//       ],
//     );
//   }
//
//   // static Widget headerRow(
//   //     {@required String? headerText,
//   //     @required String? buttonText,
//   //     @required Function? onPress}) {
//   //   return Row(
//   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //     children: [
//   //       TextView.getLargeText(headerText, Assets.latoRegular,
//   //           color: AppColors.blackTextColor, lines: 1),
//   //       onPress != null
//   //           ? GestureDetector(
//   //               onTap: () {
//   //                 onPress.call();
//   //               },
//   //               child: TextView.getRegularText(buttonText, Assets.latoRegular,
//   //                   color: AppColors.blueHomeColor, lines: 1),
//   //             )
//   //           : OpenContainer(
//   //               closedElevation: 0,
//   //               closedColor: AppColors.transparentColor,
//   //               transitionType: ContainerTransitionType.fadeThrough,
//   //               transitionDuration: Duration(milliseconds: 250),
//   //               openBuilder: (context, _) => OfferScreen(),
//   //               closedBuilder: (context, VoidCallback openContainer) =>
//   //                   TextButton(
//   //                 onPressed: openContainer,
//   //                 child: TextView.getRegularText(buttonText, Assets.latoRegular,
//   //                     color: AppColors.blueHomeColor, lines: 1),
//   //               ),
//   //             ),
//   //     ],
//   //   );
//   // }
//
//   static Widget seminarsCard(
//       {@required String? text,
//       @required String? date,
//       @required String? image,
//       @required String? description}) {
//     bool isImageUrl = Uri.tryParse(image!)?.hasAbsolutePath ?? false;
//
//     return Container(
//       height: sizes!.heightRatio * 145,
//       width: sizes!.widthRatio * 325,
//       decoration: BoxDecoration(
//           boxShadow: const [
//             BoxShadow(
//                 color: AppColors.lightGreyTextColor,
//                 blurRadius: 2,
//                 offset: Offset(1, 1))
//           ],
//           borderRadius: BorderRadius.circular(25),
//           color: Colors.white70,
//           image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: const LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               AppColors.blackTextColor,
//               AppColors.seminarGradient2,
//               AppColors.seminarGradient3,
//             ],
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(sizes!.pagePadding),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextView.getSmallText(
//                       text ?? "Educational Seminar", Assets.latoRegular,
//                       color: AppColors.whiteTextColor, lines: 1),
//                   TextView.getSmallText12(
//                       //date,
//                       DateTimeFormat.format(DateTime.parse(date!),
//                           format: 'M j, Y'),
//                       Assets.latoRegular,
//                       color: AppColors.whiteTextColor,
//                       lines: 1),
//                 ],
//               ),
//               SizedBox(
//                 height: sizes!.heightRatio * 30,
//               ),
//               TextView.getSmallText(
//                   description ??
//                       "We are a medium-sized advertising agency with a very large office",
//                   Assets.latoLight,
//                   color: AppColors.whiteTextColor,
//                   lines: 2),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget imageContainer({@required String? image}) {
//     return Container(
//       width: sizes!.widthRatio * 323,
//       height: sizes!.heightRatio * 286,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: AppColors.whiteTextColor,
//           boxShadow: const [
//             BoxShadow(
//                 color: AppColors.lightGreyTextColor,
//                 blurRadius: 2,
//                 offset: Offset(1, 1))
//           ],
//           image: DecorationImage(
//               image: NetworkImage(image!), fit: BoxFit.values[5])),
//     );
//   }
//
//   static Widget seminarsCardWithDetail(
//       {@required String? text,
//       @required String? date,
//       @required String? image,
//       @required String? description}) {
//     return Container(
//       width: sizes!.widthRatio * 280,
//       height: sizes!.heightRatio * 150,
//       margin: EdgeInsets.only(right: sizes!.widthRatio * 15),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         image: DecorationImage(
//           image: NetworkImage(image!), //?? Assets.seminarImage
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           gradient: const LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               AppColors.blackTextColor,
//               AppColors.seminarGradient2,
//               AppColors.seminarGradient3,
//             ],
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(sizes!.pagePadding),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextView.getSmallText(
//                       text ?? "Educational Seminar", Assets.latoRegular,
//                       color: AppColors.whiteTextColor, lines: 1),
//                   TextView.getSmallText12(
//                       //date,
//                       DateTimeFormat.format(DateTime.parse(date!),
//                           format: 'M j, Y'),
//                       Assets.latoRegular,
//                       color: AppColors.whiteTextColor,
//                       lines: 1),
//                 ],
//               ),
//               SizedBox(
//                 height: sizes!.heightRatio * 30,
//               ),
//               TextView.getSmallText(
//                   description ??
//                       "We are a medium-sized advertising agency with a very large office",
//                   Assets.latoLight,
//                   color: AppColors.whiteTextColor,
//                   lines: 2),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget officeInfoContainer(
//       {@required String? name,
//       @required String? image,
//       @required String? area,
//       @required String? price,
//       @required int? distance,
//       @required String? open,
//       @required String? ratingText,
//       @required String? description,
//       @required double? starRating,
//       @required Function? onPress,
//       ignoreEdit}) {
//     bool isImageUrl = Uri.tryParse(image!)?.hasAbsolutePath ?? false;
//
//     debugPrint("Booking: $name");
//
//     return Container(
//         margin: EdgeInsets.only(bottom: sizes!.heightRatio * 5), //5
//         padding: EdgeInsets.only(bottom: sizes!.heightRatio * 25),
//         //width: sizes!.widthRatio * 330,
//         //height: sizes!.heightRatio * 277,
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//           color: AppColors.whiteTextColor,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.only(
//                   left: sizes!.widthRatio * 15,
//                   right: sizes!.widthRatio * 15,
//                   top: sizes!.heightRatio * 15,
//                   bottom: sizes!.heightRatio * 15),
//               width: sizes!.widthRatio * 400,
//               //height: sizes!.heightRatio * 180,
//               child: isImageUrl
//                   ? Image.network(image)
//                   : Image.asset(Assets.officeImage),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: Row(
//                 children: [
//                   TextView.getMediumText(name ?? "sample", Assets.latoBlack,
//                       color: AppColors.blackTextColor, lines: 2),
//                   SizedBox(
//                     width: sizes!.widthRatio * 5,
//                   ),
//                   TextView.getSmallText(
//                       area != null ? "($area)" : "sample", Assets.latoRegular,
//                       color: AppColors.smallOfficeSizeText, lines: 2),
//                   const Spacer(),
//                   Container(
//                     width: sizes!.widthRatio * 49,
//                     height: sizes!.heightRatio * 21,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(4)),
//                       color: AppColors.appTheme,
//                     ),
//                     child: Center(
//                       child: TextView.getSmallText(
//                           price != null ? "$price\$" : "sample",
//                           Assets.latoRegular,
//                           color: AppColors.whiteTextColor,
//                           lines: 2),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 5,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: Row(
//                 children: [
//                   TextView.getSmallText(
//                       distance != null
//                           ? "Hotel '$distance'km Distance. "
//                           : "sample",
//                       Assets.latoBold,
//                       color: AppColors.clrLightButton,
//                       lines: 1),
//                   TextView.getSmallText(open ?? "open", Assets.latoBold,
//                       color: AppColors.blueHomeColor, lines: 1),
//                   const Spacer(),
//                   TextView.getExtraSmallText(ratingText, Assets.latoRegular,
//                       color: AppColors.blackTextColor, lines: 1),
//                   SizedBox(
//                     width: sizes!.widthRatio * 3,
//                   ),
//                   RatingBar.builder(
//                     initialRating: starRating ?? 4,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemSize: 11,
//                     itemPadding:
//                         EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 0),
//                     itemBuilder: (context, _) => const Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     ignoreGestures: ignoreEdit ?? true,
//                     onRatingUpdate: (rating) {
//                       onPress!.call(rating);
//                       debugPrint("$rating");
//                     },
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 5,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: TextView.getRegularText(
//                 description ?? "sample",
//                 Assets.latoRegular,
//                 color: AppColors.officeDetailText,
//                 lines: 3,
//               ),
//             ),
//           ],
//         ));
//   }
//
//   static Widget officeInfoContainer2(
//       {@required String? name,
//       @required String? image,
//       @required String? area,
//       @required int? distance,
//       @required String? open,
//       @required String? description,
//       @required double? starRating,
//       @required String? ratingText,
//       @required Function? onPress,
//       ignoreEdit}) {
//     bool isImageUrl = Uri.tryParse(image!)?.hasAbsolutePath ?? false;
//
//     return Container(
//         margin: EdgeInsets.only(bottom: sizes!.heightRatio * 15),
//         padding: EdgeInsets.only(bottom: sizes!.heightRatio * 20),
//         //width: sizes!.widthRatio * 330,
//         //height: sizes!.heightRatio * 277,
//         decoration: const BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//                 color: AppColors.lightGreyTextColor,
//                 blurRadius: 2,
//                 offset: Offset(1, 1))
//           ],
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//           color: AppColors.whiteTextColor,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.only(
//                   left: sizes!.widthRatio * 15,
//                   right: sizes!.widthRatio * 15,
//                   top: sizes!.heightRatio * 15,
//                   bottom: sizes!.heightRatio * 15),
//               //width: sizes!.widthRatio * 400,
//               //height: sizes!.heightRatio * 180,
//               child: isImageUrl
//                   ? Image.network(image)
//                   : Image.asset(Assets.seminarImage),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: Row(
//                 children: [
//                   TextView.getMediumText(name, Assets.latoBlack,
//                       color: AppColors.blackTextColor, lines: 1),
//                   SizedBox(
//                     width: sizes!.widthRatio * 5,
//                   ),
//                   TextView.getSmallText(
//                       area != null ? "($area)" : "sample", Assets.latoRegular,
//                       color: AppColors.smallOfficeSizeText, lines: 1),
//                   //Spacer(),
//                   // Container(
//                   //   width: sizes!.widthRatio * 49,
//                   //   height: sizes!.heightRatio * 21,
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.all(Radius.circular(4)),
//                   //     color: AppColors.appTheme,
//                   //   ),
//                   //   child: Center(
//                   //     child: TextView.getSmallText(
//                   //         Strings.officePriceText, Assets.latoRegular,
//                   //         color: AppColors.whiteTextColor, lines: 1),
//                   //   ),
//                   // )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 5,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: Row(
//                 children: [
//                   TextView.getSmallText(
//                       distance != null
//                           ? "Hotel '$distance'km Distance. "
//                           : "sample",
//                       Assets.latoBold,
//                       color: AppColors.clrLightButton,
//                       lines: 1),
//                   TextView.getSmallText(open ?? "open", Assets.latoBold,
//                       color: AppColors.blueHomeColor, lines: 1),
//                   const Spacer(),
//                   TextView.getExtraSmallText(ratingText, Assets.latoRegular,
//                       color: AppColors.blackTextColor, lines: 1),
//                   SizedBox(
//                     width: sizes!.widthRatio * 3,
//                   ),
//                   RatingBar.builder(
//                     initialRating: starRating ?? 4,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemSize: 11,
//                     itemPadding:
//                         EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 0),
//                     itemBuilder: (context, _) => const Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     ignoreGestures: ignoreEdit ?? true,
//                     onRatingUpdate: (rating) {
//                       onPress!.call(rating);
//                       debugPrint("$rating");
//                     },
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 5,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: TextView.getRegularText(
//                 description ?? "sample",
//                 Assets.latoRegular,
//                 color: AppColors.officeDetailText,
//                 lines: 3,
//               ),
//             ),
//           ],
//         ));
//   }
//
//   static Widget officeInfoSmallContainer(
//       {@required String? heading,
//       @required String? date,
//       @required String? detail,
//       @required String? image}) {
//     bool isImageUrl = Uri.tryParse(image!)?.hasAbsolutePath ?? false;
//
//     return Container(
//         margin: EdgeInsets.only(bottom: sizes!.heightRatio * 15),
//         padding: EdgeInsets.only(bottom: sizes!.heightRatio * 20),
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//           color: AppColors.whiteTextColor,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.only(
//                   left: sizes!.widthRatio * 15,
//                   right: sizes!.widthRatio * 15,
//                   top: sizes!.heightRatio * 15,
//                   bottom: sizes!.heightRatio * 15),
//               child: isImageUrl
//                   ? Image.network(image)
//                   : Image.asset(Assets.officeImage2),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: Row(
//                 children: [
//                   TextView.getMediumText(heading, Assets.latoBlack,
//                       color: AppColors.blackTextColor, lines: 1),
//                   const Spacer(),
//                   TextView.getSmallText12(
//                       date ?? "May 14, 2021",
//                       //'${DateTimeFormat.format(DateTime.parse(date!), format: 'M j, Y')}',
//                       Assets.latoBold,
//                       color: AppColors.clrLightButton,
//                       lines: 1),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 5,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: TextView.getRegularText(
//                 detail,
//                 Assets.latoRegular,
//                 color: AppColors.officeDetailText,
//                 lines: 3,
//               ),
//             ),
//           ],
//         ));
//   }
//
//   static Widget eventsOfficeInfoSmallContainer(
//       {@required String? heading,
//       @required String? date,
//       @required String? detail,
//       @required String? image}) {
//     return Container(
//         margin: EdgeInsets.only(bottom: sizes!.heightRatio * 15),
//         padding: EdgeInsets.only(bottom: sizes!.heightRatio * 20),
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(30)),
//           color: AppColors.whiteTextColor,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               margin: EdgeInsets.only(
//                   left: sizes!.widthRatio * 15,
//                   right: sizes!.widthRatio * 15,
//                   top: sizes!.heightRatio * 15,
//                   bottom: sizes!.heightRatio * 15),
//               child: Image.network(image!), //?? Assets.officeImage2
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: Row(
//                 children: [
//                   TextView.getMediumText(heading, Assets.latoBlack,
//                       color: AppColors.blackTextColor, lines: 1),
//                   const Spacer(),
//                   TextView.getSmallText12(
//                       DateTimeFormat.format(DateTime.parse(date!),
//                           format: 'M j, Y'),
//                       Assets.latoBold,
//                       color: AppColors.clrLightButton,
//                       lines: 1),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: sizes!.heightRatio * 5,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 15),
//               child: TextView.getRegularText(
//                 detail,
//                 Assets.latoRegular,
//                 color: AppColors.officeDetailText,
//                 lines: 3,
//               ),
//             ),
//           ],
//         ));
//   }
//
//   static String? formatDate({@required String? date}) {
//     if (date != null) {
//       DateTime dateTime = DateTime.parse(date);
//       date = dateTime.format('j M');
//       return date;
//     } else {
//       return date;
//     }
//   }
//
//   static Widget cardData() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//               left: sizes?.pagePadding ?? 15,
//               bottom: sizes?.mediumPadding ?? 10),
//           child: TextView.getRegularText("Card Owner", Assets.latoRegular,
//               color: AppColors.blackHeading, lines: 1),
//         ),
//         Center(
//             child: CommonWidgets.customTextField(Icons.check, false,
//                 placeHolder: "randy.hudson")),
//         SizedBox(
//           height: getHeight() * 0.02,
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//               left: sizes?.pagePadding ?? 15,
//               bottom: sizes?.mediumPadding ?? 10),
//           child: TextView.getRegularText("Card Number", Assets.latoRegular,
//               color: AppColors.blackHeading, lines: 1),
//         ),
//         Center(
//             child: CommonWidgets.customTextField(Icons.check, false,
//                 placeHolder: "XXX-983264893")),
//         SizedBox(
//           height: getHeight() * 0.02,
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//               left: sizes?.pagePadding ?? 15, right: sizes?.pagePadding ?? 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding:
//                         EdgeInsets.only(bottom: sizes?.mediumPadding ?? 10),
//                     child: TextView.getRegularText("CCV", Assets.latoRegular,
//                         color: AppColors.blackHeading, lines: 1),
//                   ),
//                   CommonWidgets.customSmallTextField(placeHolder: "2454"),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding:
//                         EdgeInsets.only(bottom: sizes?.mediumPadding ?? 10),
//                     child: TextView.getRegularText(
//                         "Expiry Date", Assets.latoRegular,
//                         color: AppColors.blackHeading, lines: 1),
//                   ),
//                   CommonWidgets.customSmallTextField(placeHolder: "14-04-2022"),
//                 ],
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
//
//   static double getHeight() => sizes?.height ?? 2560;
//
//   static double getWidth() => sizes?.width ?? 1440;
//
//   static Widget subscriptionCard(
//       {@required String? headerText,
//       @required double? secondText,
//       @required String? details,
//       @required bool? isGreen,
//       @required bool? isSelectedPlan}) {
//     return Container(
//       //width: sizes!.widthRatio * 323,
//       //height: sizes!.heightRatio * 140,
//       padding: EdgeInsets.symmetric(
//           horizontal: sizes!.pagePadding, vertical: sizes!.pagePadding),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color:
//               isGreen ?? true ? AppColors.greenColor : AppColors.whiteTextColor,
//           boxShadow: const [
//             BoxShadow(
//                 color: AppColors.veryLightGreyTextColor,
//                 offset: Offset(1, 1),
//                 blurRadius: 5)
//           ]),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextView.getLargeText(headerText ?? "Monthly", Assets.latoRegular,
//                   color: isGreen ?? true
//                       ? AppColors.whiteTextColor
//                       : AppColors.blackTextColor,
//                   lines: 1,
//                   fontWeight: FontWeight.normal),
//               TextView.getRegularText("QR $secondText", Assets.latoRegular,
//                   color: isGreen ?? true
//                       ? AppColors.whiteTextColor
//                       : AppColors.blackTextColor,
//                   lines: 1),
//             ],
//           ),
//           SizedBox(height: sizes!.heightRatio * 7),
//           TextView.getSmallText(
//               details ?? "Lorem Ipsum dolor sit", Assets.latoRegular,
//               color: isGreen ?? true
//                   ? AppColors.whiteTextColor
//                   : AppColors.blackTextColor,
//               lines: 3),
//         ],
//       ),
//     );
//   }
//
//   static Widget subscriptionPlanCard(
//       {@required String? headerText,
//       @required double? secondText,
//       @required String? details,
//       @required bool? isGreen,
//       @required int? selectedIndex,
//       @required int? index}) {
//     return Container(
//       //width: sizes!.widthRatio * 323,
//       //height: sizes!.heightRatio * 140,
//       padding: EdgeInsets.symmetric(
//           horizontal: sizes!.pagePadding, vertical: sizes!.pagePadding),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: (index == selectedIndex)
//               ? AppColors.greenColor
//               : AppColors.whiteTextColor,
//           boxShadow: const [
//             BoxShadow(
//                 color: AppColors.veryLightGreyTextColor,
//                 offset: Offset(1, 1),
//                 blurRadius: 5)
//           ]),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextView.getLargeText(headerText ?? "Monthly", Assets.latoRegular,
//                   color: isGreen ?? true
//                       ? AppColors.whiteTextColor
//                       : AppColors.blackTextColor,
//                   lines: 1,
//                   fontWeight: FontWeight.normal),
//               TextView.getRegularText("QR $secondText", Assets.latoRegular,
//                   color: isGreen ?? true
//                       ? AppColors.whiteTextColor
//                       : AppColors.blackTextColor,
//                   lines: 1),
//             ],
//           ),
//           SizedBox(height: sizes!.heightRatio * 7),
//           TextView.getSmallText(
//               details ?? "Lorem Ipsum dolor sit", Assets.latoRegular,
//               color: isGreen ?? true
//                   ? AppColors.whiteTextColor
//                   : AppColors.blackTextColor,
//               lines: 3),
//         ],
//       ),
//     );
//   }
//
//   static Widget starBar(
//       {@required Function? onPress, ignoreEdit, @required double? starRating}) {
//     return RatingBar.builder(
//       initialRating: starRating ?? 4,
//       unratedColor: AppColors.transparentColor,
//       minRating: 1,
//       direction: Axis.horizontal,
//       allowHalfRating: true,
//       itemCount: 5,
//       itemSize: 11,
//       itemPadding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 0),
//       itemBuilder: (context, _) => const Icon(
//         Icons.star,
//         color: Colors.white,
//       ),
//       ignoreGestures: ignoreEdit ?? true,
//       onRatingUpdate: (rating) {
//         onPress!.call(rating);
//         debugPrint("$rating");
//       },
//     );
//   }
//
//   static Widget getClearFilter(
//       {@required String? filterText, @required Function? onPressClearFilter}) {
//     return GestureDetector(
//       onTap: () => onPressClearFilter!(),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: sizes!.width * 0.15),
//         // height: sizes.height * 0.05,
//         // width: sizes.width * 0.4,
//         child: TextView.getRegularTextHeavy(filterText, Assets.latoBold,
//             color: AppColors.redColor, lines: 1),
//       ),
//     );
//   }
// }
