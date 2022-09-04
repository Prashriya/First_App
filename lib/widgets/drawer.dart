import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://www.pinterest.com/pin/759630662155055181/";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Prashriya Acharya"),
              accountEmail: Text("sgdhu@gmail.com"),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            ),
          ),
          ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.teal,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.teal,
                ),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.teal,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.teal,
                ),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.teal,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.teal,
                ),
              ))
        ],
      ),
    );
  }
}
