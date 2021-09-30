import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';

class ItemWidgets extends StatelessWidget {

  final Item item;

  const ItemWidgets({ Key? key,required this.item}) 
    : assert(item != null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: ListTile(

        onTap: ()=>Navigator.pushNamed(context, MyRoute.LoginRoute),
        
        leading: Image.network(item.image),
        title: Text(item.name
        ),
        subtitle: Text(item.desc
        ),
        trailing: Text("\$${item.price.toString()}",
        textScaleFactor: 1.5,
        style: TextStyle(
           color: Colors.purple,
           fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}