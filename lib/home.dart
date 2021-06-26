import 'package:flutter/material.dart';
import 'package:police_app/app_state/UserState.dart';
import 'package:police_app/intro.dart';
import 'package:police_app/cases.dart';
import 'package:police_app/profile.dart';
import 'package:provider/provider.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
 


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Cases",
                ),
                Tab(
                  text: "Profile",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [Intro(), Cases(), Profile()],
          ),
        ));
  }
}
