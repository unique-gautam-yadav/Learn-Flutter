// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue[100],
      child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Gautam Yadav"),
                accountEmail: Text("gautam.gla_csd20@gla.ac.in"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Profile.jpg")),
              )),
          const ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Your Profile"),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text("Mail Me"),
          )
        ],
      ),
    );
  }
}
