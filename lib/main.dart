import 'package:flutter/material.dart';
import 'package:untitled6/screens/home/view/homeScreen.dart';
import 'package:untitled6/screens/loginRegister/view/loginScreen.dart';
import 'package:untitled6/screens/loginRegister/view/registerScreen.dart';

void main() {
  runApp(
    MultiProvide(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => loginScreen(),
          'register': (context) => registerScreen(),
          'home': (context) => homeScreen()
        },
      ),
    ),
  );
}
