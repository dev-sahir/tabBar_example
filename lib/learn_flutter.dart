import 'package:flutter/material.dart';
import 'package:learn_flutter/Screens/chat_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:learn_flutter/Screens/friends_screen.dart';
import 'package:learn_flutter/Screens/home_screen.dart';
import 'package:learn_flutter/Screens/profile_screen.dart';

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: Icon(Icons.menu),
          title: Text('TabBar'),
          actions: [
            Container(
                margin: EdgeInsets.all(6.0),
                child: Icon(Icons.notifications_outlined)),
            Container(margin: EdgeInsets.all(6.0), child: Icon(Icons.search)),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'Friends',
              ),
              Tab(
                icon: Icon(MdiIcons.facebookMessenger),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.account_circle),
                text: 'Profile',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          HomeScreen(),
          FriendsScreen(),
          ChatScreen(),
          ProfileScreen(),
        ]),
      ),
    );
  }
}
