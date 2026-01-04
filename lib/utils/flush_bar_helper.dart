import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:bloc_part_two/config/colors/color.dart';
import 'package:flutter/material.dart';

class FlushBarHelper {
  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        duration: Duration(seconds: 4),
        borderRadius: BorderRadius.circular(20),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.red,
        reverseAnimationCurve: Curves.bounceOut,
        forwardAnimationCurve: Curves.bounceIn,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        message: message,
        messageColor: Colors.white,
        icon: Icon(Icons.error, color: AppColors.whiteColor),
      )..show(context),
    );
  }

  static void flushBarSuccessMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        duration: Duration(seconds: 4),
        borderRadius: BorderRadius.circular(20),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.green,
        reverseAnimationCurve: Curves.bounceOut,
        forwardAnimationCurve: Curves.bounceIn,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        message: message,
        messageColor: Colors.white,
        icon: Icon(Icons.error, color: AppColors.whiteColor),
      )..show(context),
    );
  }
}
