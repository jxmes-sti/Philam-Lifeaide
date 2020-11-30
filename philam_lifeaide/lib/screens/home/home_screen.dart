import 'package:flutter/material.dart';
import 'package:philam_lifeaide/screens/home/components/foods.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: IntroThreePage(),
    );
  }
}
