
import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';

class Home extends StatefulWidget {
  @override
  State createState() => HomeState();
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
   body: ListView.builder(
   // padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
    itemCount: 3,
    itemBuilder: (BuildContext context, int index){
      return Container(
        color: Colors.blue,
        padding: EdgeInsets.all(5),
        //margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: ListTile(
          title: Text("OK"),
          trailing: IconButton(
            icon: Icon(Icons.navigate_next, color: Color.fromRGBO(207, 229, 255, 1), size: 44,),

            onPressed: () {
              //
            },
          )
        ),
      );
    },
   ),
   );
  }
  
}
