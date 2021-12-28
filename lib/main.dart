import 'package:flutter/material.dart';
import 'package:simple_login/constants.dart';
import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      themeMode: ThemeMode.light,
      home: WelcomeScreen(),
    );
  }
}

