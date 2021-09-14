import 'package:flutter/material.dart';

class MyConstants extends InheritedWidget {
  MyConstants({Key? key, required Widget child, Color? primaryColor})
      : super(key: key, child: child);

  final String successMessage = 'Some message';
  final Color primaryColor = Color(0xFF06B7E5);

  static MyConstants? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyConstants>();

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}
