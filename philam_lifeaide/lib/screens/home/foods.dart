import 'package:flutter/material.dart';
import 'components/glow_pageview.dart';
import 'components/go_pageview.dart';
import 'components/grow_pageview.dart';

class FoodGroups extends StatefulWidget {
  @override
  _FoodGroupsState createState() => _FoodGroupsState();
}

class _FoodGroupsState extends State<FoodGroups> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 300,
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                  color: Color(0xffff3a5a),
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          PageView(
            controller: _controller,
            children: [
              GoFoods(),
              GrowFoods(),
              GlowFoods(),
            ],
          )
        ],
      ),
    );
  }
}
