// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/Home_Widgets/Catalog_Header.dart';
import 'package:flutter_application_1/widgets/Home_Widgets/Catalog_List.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Home_page extends StatefulWidget {
  const Home_page({ Key? key }) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async{

   await Future.delayed(Duration(seconds: 1));

   final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
   final decodedData = jsonDecode(catalogJson);
   var productData = decodedData["products"];

   CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

   setState(() {
     
   });

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: MyThemes.creamColor,
     body: SafeArea(
     child: Container(
       padding: Vx.m32,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           CatalogHeader(),

           if(CatalogModel.items != null && CatalogModel.items.isNotEmpty) 
               CatalogList().py16().expand()

              else
              CircularProgressIndicator().centered().expand(),
                
           
         ],
       ),
     ),
     )
      );
     
  }
}












            //FOR LIST VIEW
        //  ? ListView.builder(
        //      itemCount: CatalogModel.items.length,
        //      itemBuilder: (context,index) =>ItemWidgets(
        //          item: CatalogModel.items[index],
               
        //      ),
        //   )


         //AFTER RETURN SCAFFOLD

      //    appBar: AppBar(
      //   title: Text("Catalog App"),
      // ),
      //   body: Padding(
      //     padding: const EdgeInsets.all(18.0),
      //     child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty) 
      //     ? GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 16,
      //       crossAxisSpacing: 16
      //     ),
      //      itemBuilder: (context,index){
      //        final item = CatalogModel.items[index];
      //        return Card(
      //          clipBehavior: Clip.antiAlias,
      //          shape: RoundedRectangleBorder(
      //            borderRadius:BorderRadius.circular(10)
      //             ),

      //             child: GridTile(
      //               header: Text(item.name),
      //               child: Image.network(item.image),
      //               footer: Text(item.price.toString()
      //               ),
      //               ),
      //        );
      //      },
      //      itemCount: CatalogModel.items.length,
      //      )
           
      //     : Center(
      //       child: CircularProgressIndicator(),
      //     )
      //   ),
      //   drawer: MyDrawer(),