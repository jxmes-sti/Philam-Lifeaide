import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'icon_svg.dart';

class TimeLinePage extends StatefulWidget {
  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timeline"),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffff3a5a),
        centerTitle: true,
      ),
      backgroundColor: Colors.red[200],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TimelineTile(
              alignment: TimelineAlign.center,
              isFirst: true,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Colors.purple,
                indicatorY: 0.2,
                padding: EdgeInsets.all(8),
              ),
              leftChild: Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      eat,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Breakfast",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.center,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Colors.yellowAccent,
                padding: EdgeInsets.all(8),
                indicatorY: 0.3,
              ),
              rightChild: Container(
                child: Column(
                  children: [
                    Image.asset(
                      chicken,
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Chicken",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "239 cal/100g",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.center,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Colors.redAccent,
                padding: EdgeInsets.all(8),
                indicatorY: 0.3,
              ),
              leftChild: Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      eat,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Lunch",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.center,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Colors.lightBlueAccent,
                padding: EdgeInsets.all(8),
                indicatorY: 0.3,
              ),
              rightChild: Container(
                child: Column(
                  children: [
                    Image.asset(
                      bread,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Bread",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "130 cal/100g",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.center,
              isLast: true,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Colors.green,
                padding: EdgeInsets.all(8),
                indicatorY: 0.3,
              ),
              leftChild: Container(
                child: Column(
                  children: [
                    Image.asset(
                      tuna,
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Tuna",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "132 cal/100g",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
