// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:velocity_x/src/flutter/padding.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Home_Detail extends StatelessWidget {
  final Item catalog;

  const Home_Detail({ Key? key,required this.catalog })
   :assert(catalog!=null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyThemes.creamColor,
      
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.color(Colors.red).xl4.make(),
                    ElevatedButton(
                      onPressed: () {

                        Navigator.pushNamed(context, MyRoute.LoginRoute);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyThemes.bluishColor
                        ),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                    )),
                    child: "Buy".text.bold.xl2.make(),
                       ).wh(130, 60),
                  ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              
            ).h40(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                     catalog.name.text.xl5.bold.color(MyThemes.bluishColor).make(),
                     catalog.desc.text.xl3.color(MyThemes.bluishColor).make(),

                     10.heightBox,
                  ],
                ).p64(),
               ), 
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}