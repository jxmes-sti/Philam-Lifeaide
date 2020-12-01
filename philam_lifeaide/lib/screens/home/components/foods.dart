import 'package:flutter/material.dart';
import 'go_foods_plate.dart';
import 'grow_foods_plate.dart';
import 'glow_foods_plate.dart';

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

class GoFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GoFoodsPlate()));
                },
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/pancake.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    "Go \nFoods",
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontFamily: "Helvetica",
                        fontSize: 100,
                        color: Colors.white),
                  )
                ]))));
  }
}

class GrowFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GrowFoodsPlate()));
                },
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/wings.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    "Grow \nFoods",
                    style: TextStyle(
                        fontFamily: "Helvetica",
                        fontStyle: FontStyle.italic,
                        fontSize: 100,
                        color: Colors.white),
                  )
                ]))));
  }
}

class GlowFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GlowFoodsPlate()));
                },
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/veggies.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    "Glow \nFoods",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontFamily: "Roboto",
                        fontSize: 100,
                        color: Colors.white),
                  )
                ]))));
  }
}
