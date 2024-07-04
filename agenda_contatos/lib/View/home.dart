
import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    // Título do App
    appBar: new Topbar(),

    // Menu
    drawer: new MenuDrawer(),
    // Corpo do App
   body: SingleChildScrollView(
    child: Column(
      children: [
        // new SizedBox(height: 25),

        new Container(
         
        )
      ],
    )
   ),
   );
  }
  
}
