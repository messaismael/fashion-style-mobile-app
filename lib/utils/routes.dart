import 'package:fashion_style_mobile/screens/home_screen.dart';
import 'package:fashion_style_mobile/screens/login_screen.dart';
import 'package:fashion_style_mobile/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen().routeName: (context) => HomeScreen(),
  LoginScreen().routeName: (context) => LoginScreen(),
  RegisterScreen().routeName: (context) => RegisterScreen()
};
