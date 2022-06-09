import 'dart:core';

import 'package:flutter/material.dart';
import 'package:timeclockwizard/auth/forgotpassword.dart';
import 'package:timeclockwizard/auth/login.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String forgotpassword = '/forgotpassword';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => LoginPage(),
    forgotpassword: (BuildContext context) => ForgotPasswordPage(),
  };
}
