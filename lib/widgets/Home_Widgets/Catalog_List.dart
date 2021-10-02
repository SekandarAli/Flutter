// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/pages/Home_Detail_Page.dart';

import 'Catalog_Item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
             itemCount: CatalogModel.items.length,
             itemBuilder: (context,index) {
               final catalog = CatalogModel.items[index];
                 return InkWell(

                   onTap: ()=> Navigator.push(context, 
                   MaterialPageRoute(
                     builder: (context)=>Home_Detail(
                       catalog: catalog,
                     ),
                     ),
                   ),
                   child: (
                     CatalogItem(catalog: catalog)
                   ),
                 );
               
             },
          );
  }
}