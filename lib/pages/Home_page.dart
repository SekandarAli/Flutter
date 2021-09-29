// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Home_page extends StatelessWidget {
  const Home_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int days = 30;
    String name = "Flutter";
    const pie = 3.14;


    return Scaffold(
      appBar: AppBar(
        title: Text("Sekandar Ali"),
      ),
        body: Center(
          child: Text(
            "Welcome to the $days of $name segment $pie",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
            ),
        ),
        drawer: MyDrawer() ,
      
      );
      
  }
}