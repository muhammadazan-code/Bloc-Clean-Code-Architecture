import 'dart:async';

import 'package:bloc_part_two/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.loginView,
        (route) => false,
      ),
    );
  }
}
