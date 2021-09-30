// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';

class Home_page extends StatelessWidget {
  const Home_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

   final dummyList = List.generate(20,(index)=>CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
             itemCount: dummyList.length,
             itemBuilder: (context,index){
               return ItemWidgets(
                 item: dummyList[index],
               );
             },
          ),
        ),
        drawer: MyDrawer() ,
      
      );
      
  }
}