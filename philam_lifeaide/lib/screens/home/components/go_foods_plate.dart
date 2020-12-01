import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

var pancake = Image.asset('assets/images/pancake.png');

var bread = Image.asset('assets/images/pancake.png');

var cereals = Image.asset('assets/images/pancake.png');

var pasta = Image.asset('assets/images/pancake.png');

final String eatIcon = 'assets/icons/eat-flat.svg';
final Widget svg = SvgPicture.asset(
  eatIcon,
);

class GoFoodsPlate extends StatelessWidget {
  const GoFoodsPlate({Key key}) : super(key: key);

  Widget cards(image, title, calories) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 4),
                color: Colors.deepOrange,
                child: Text(calories + " cal/100g",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12))),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 5.0,
          onPressed: () {
            showDialog(
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Color(0xfffe494d),
                    title: Text("Notification",
                        style: TextStyle(color: Colors.white)),
                    content: Text("Food has been added to My Plate.",
                        style: TextStyle(color: Colors.white)),
                    actions: <Widget>[
                      FlatButton(
                          onPressed: Navigator.of(context).pop,
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  );
                },
                context: context);
          },
          child: SvgPicture.asset(
            eatIcon,
            semanticsLabel: 'Eat button',
            placeholderBuilder: (context) => Icon(Icons.error),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xffff3a5a),
          title: Text("Go Foods"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color(0xffff3a5a),
                ),
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.only(left: 90, bottom: 20),
                width: 299,
                height: 279,
                decoration: BoxDecoration(
                    color: Color(0xfffe494d),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(160),
                        bottomLeft: Radius.circular(290),
                        bottomRight: Radius.circular(160),
                        topRight: Radius.circular(10))),
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              //decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(10.0),
                              //   color: Colors.red[50]),
                              child: Text(
                            "Go Foods are the type of food that provide fuel and help us 'go' and be active. These foods give our muscles fuel to do things and help our brain concentrate. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                          SizedBox(height: 40),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextField(
                              controller:
                                  TextEditingController(text: 'Search...'),
                              cursorColor: Theme.of(context).primaryColor,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              decoration: InputDecoration(
                                  suffixIcon: Material(
                                    elevation: 2.0,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.search),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(26.0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        cards(pancake, 'Rice', '130'),
                        cards(bread, 'Bread', '265'),
                        cards(cereals, 'Cereals', '379'),
                        cards(pasta, 'Pasta', '131'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
