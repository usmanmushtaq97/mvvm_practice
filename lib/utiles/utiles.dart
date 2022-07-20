import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG);
  }

  static flushBarMessage(String message, String title, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          backgroundColor: Colors.blue,
          forwardAnimationCurve: Curves.decelerate,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(5),
          titleColor: Colors.white,
          title: title,
          duration: const Duration(seconds: 3),
        )..show(context));
  }

  // Flush Bar for Error Message
  static flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          backgroundColor: Colors.red,
          forwardAnimationCurve: Curves.decelerate,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(5),
          titleColor: Colors.white,
          borderRadius: BorderRadius.circular(15),
          icon: const Icon(
            Icons.error,
            size: 20,
            color: Colors.white,
          ),
          duration: const Duration(seconds: 3),
        )..show(context));
  }

  // Snack bar for showing message
  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Message")));
  }

  // Focus Change costume methods
  static focusChange(
      {required FocusNode current, required FocusNode nextFocus,required BuildContext context}) {
       current.unfocus();
       FocusScope.of(context).requestFocus(nextFocus);
      }
}
