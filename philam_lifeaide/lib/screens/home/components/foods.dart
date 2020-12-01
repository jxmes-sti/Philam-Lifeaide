import 'package:flutter/material.dart';
import 'go_foods_plate.dart';

class TryFoods extends StatefulWidget {
  @override
  _TryFoodsState createState() => _TryFoodsState();
}

class _TryFoodsState extends State<TryFoods> {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EcommerceFivePage()));
                },
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/rice.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                          builder: (context) => EcommerceFivePage()));
                },
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/rice.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                          builder: (context) => EcommerceFivePage()));
                },
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/rice.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ]))));
  }
}
