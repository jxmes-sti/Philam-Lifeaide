import 'package:flutter/material.dart';

// ignore: camel_case_types
class Go_Foods extends StatelessWidget {
  const Go_Foods({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3.6,
        child: InkWell(
          onTap: () {},
          child: Card(
            child: Container(color: Colors.red[50]),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5,
            margin: EdgeInsets.all(3),
            semanticContainer: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
        ));
  }
}
