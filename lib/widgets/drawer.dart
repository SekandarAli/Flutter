// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl = "https://letsenhance.io/static/334225cab5be263aad8e3894809594ce/75c5a/MainAfter.jpg";
    return Drawer(
         
        child: Container(
          color: Colors.purple,
          child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Sekandar ali"
                ),
                 accountEmail: Text("Isekandarali@gmail.com"
                 ),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage(imageUrl),
                   //backgroundImage: AssetImage("assets/images/hey.png"),
                 ),
                 ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),

              ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),

              ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
            ),
            title: Text(
              "Mail",
              textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),

              ListTile(
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.white,
            ),
            title: Text(
              "About",
              textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),

          ],
      ),
        ),
    );
  }
}