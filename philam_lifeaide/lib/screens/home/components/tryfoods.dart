import 'package:flutter/material.dart';
import 'package:philam_lifeaide/screens/home/components/go_foods_widget.dart';
import 'package:philam_lifeaide/screens/home/components/grow_foods_widget.dart';

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

class GoFoods extends StatefulWidget {
  @override
  _GoFoodsState createState() => _GoFoodsState();
}

class _GoFoodsState extends State<GoFoods> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Grow_Foods()));
          },
          child: Text("Go Foods to men"),
        ),
      ),
    );
  }
}

class GrowFoods extends StatefulWidget {
  @override
  _GrowFoodsState createState() => _GrowFoodsState();
}

class _GrowFoodsState extends State<GrowFoods> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Grow_Foods()));
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/rice.png'),
                )),
              ),
            )));
  }
}

class GlowFoods extends StatefulWidget {
  @override
  _GlowFoodsState createState() => _GlowFoodsState();
}

class _GlowFoodsState extends State<GlowFoods> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Grow_Foods()));
          },
          child: Text("Glow Foods to men"),
        ),
      ),
    );
  }
}
