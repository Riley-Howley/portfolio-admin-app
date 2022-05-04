import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_admin/Screens/message_screen.dart';
import 'package:portfolio_admin/Screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff2b2d2f),
        title: Text("Welcome Back Sir"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MessagesScreen(),
                    ));
                  },
                  child: Badge(
                    badgeColor: Colors.red,
                    badgeContent: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    child: Icon(
                      Icons.inbox,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 100,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingScreen(),
                    ));
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
