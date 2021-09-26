import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int days = 30;
    String name = "Flutter";
    String a = "Duplicate";
    bool male = true;
    var hello = "Hello";
    var hi = 5;
    const pie = 3.14;


    return Scaffold(
      appBar: AppBar(
        title: const Text("Sekandar Ali"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to the $days of $name segment"+a),
          ),
        ),
        drawer: Drawer(),
      );
      
  }
}