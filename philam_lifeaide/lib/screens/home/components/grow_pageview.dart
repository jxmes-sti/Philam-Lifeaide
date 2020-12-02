import 'package:flutter/material.dart';
import 'package:philam_lifeaide/constants.dart';
import 'package:philam_lifeaide/screens/grow_foods/grow_foods_plate.dart';

class GrowFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GrowFoodsPlate()));
            },
            child: Card(
              color: kPrimaryBackground,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(60.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Grow \nFoods",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        decoration: BoxDecoration(
                            color: Colors.red[200],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40.0,
                    left: 10.0,
                    right: 10.0,
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Grow foods help our body grow bigger and stronger. 'Grow' foods help build our body's bones, teeth, and muscles.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Grow.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      )),
                ],
              ),
            )));
  }
}
