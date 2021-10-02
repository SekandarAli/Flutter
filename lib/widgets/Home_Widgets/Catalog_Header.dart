// ignore_for_file: implementation_imports, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             "Catalog App".text.xl5.bold.color(MyThemes.bluishColor).make(),
             "Trending products ".text.xl2.color(MyThemes.bluishColor).make(),
           ],
      
    );
  }
}