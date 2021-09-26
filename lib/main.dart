import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main()
{

  runApp(App());
}

class  App extends StatelessWidget {
  const App ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      
      home: home_page(),
    );
  }
}

 