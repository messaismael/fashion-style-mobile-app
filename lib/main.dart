import 'package:fashion_style_mobile/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fashion_style_mobile/screens/login_screen.dart';
import 'package:fashion_style_mobile/utils/constants.dart';
import 'package:fashion_style_mobile/utils/routes.dart';

void main() {
  runApp(MyConstants(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: Main(
        title: "Fasion Style",
      ),
    );
  }
}

class Main extends StatefulWidget {
  Main({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
    /* Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          decoration: BoxDecoration(
              border: Border.all(
            width: 0,
          )),
          child: Center(child: HomeScreen())),
    ); */
  }
}
