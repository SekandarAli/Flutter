
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  
  final Item catalog;
  
  const CatalogItem({
    Key? key,
    required this.catalog})
    : assert (catalog != null),
   super(key: key);


  @override
  Widget build(BuildContext context) {
    return VxBox(

      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image,
            ).box.rounded.p8.color(MyThemes.creamColor).make().p16().w32(context),
          ),

          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.bold.color(MyThemes.bluishColor).make(),
              catalog.desc.text.color(MyThemes.bluishColor).make(),

              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        MyThemes.bluishColor
                      ),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                  )),
                  child: "Buy".text.make(),
                     )
                ],
              ).pOnly(right: 12)
            ],
          ))
        ],
      )
    ).white.rounded.square(150).make().py16();
      
    
  }
}


