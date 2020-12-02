import 'package:flutter/material.dart';
import 'package:philam_lifeaide/screens/auth/welcome_page.dart';

void main() {
  runApp(LifeAide());
}

class LifeAide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeHomePage(),
    );
  }
}
