
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
    padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
    itemCount: 7,
    itemBuilder: (BuildContext context, int index){
      return Container(
        color: Color.fromRGBO(45, 49, 53, 1),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Icon(Icons.account_circle_rounded, color: Color.fromRGBO(207, 229, 255, 1), size: 50,)
            ]
          ),

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
    //Botão flutuante
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color.fromRGBO(214, 189, 237, 1),
      child: Icon(Icons.add, color: Color.fromRGBO(213, 228, 247, 1), size: 36,),
      onPressed: () {},
    ),
   );
  }
  
}
