import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Topbar extends AppBar {
  Topbar() : super(
    automaticallyImplyLeading: false, //Esconde o ícone original do (menu)
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Icon(
            Icons.menu
          ),

          //Abrre o menu
          onPressed: () => Scaffold.of(context).openDrawer()
        );
      } 
    ),
    
    
    
    // Título
    title: Text(
      "Meus Contatos",
      style: TextStyle(
        color: Color.fromRGBO(156, 203, 251, 1), //cor do título
        fontSize: 28
      )
      )
  );
}
