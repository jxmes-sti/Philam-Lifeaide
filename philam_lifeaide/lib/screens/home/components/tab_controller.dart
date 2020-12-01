import 'package:flutter/material.dart';
//import 'package:philam_lifeaide/screens/profile/edit_profile.dart';
import 'package:philam_lifeaide/screens/profile/profile_page.dart';
import 'package:philam_lifeaide/screens/timeline/timeline.dart';
import '../home_screen.dart';

class TabControllerWidget extends StatelessWidget {
  const TabControllerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        body: TabBarView(
          children: [
            HomeScreen(),
            TimeLinePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.home),
            ),
            Tab(
              icon: new Icon(Icons.timeline),
            ),
            Tab(
              icon: new Icon(Icons.account_circle),
            ),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red[100],
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.black,
        ),
        backgroundColor: Color(0xffff3a5a),
      ),
    );
  }
}
