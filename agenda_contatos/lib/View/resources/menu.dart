import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

 Text mostrarTitulo(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }


class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
       // Home
        new ListTile(
          title: mostrarTitulo("Home",), 
          trailing: Icon(Icons.navigate_next, size: 44),
          leading: Icon(
            Icons.home_outlined,
            color: Color.fromRGBO(212, 190, 230, 1), //mudar cor ícone home
            size: 42
          ),

        // Vai para a página Home
          onTap: () {
            Navigator.push(
            context,
             MaterialPageRoute(
              builder: (context) => Home()
              )
             );
          }
        ),
        // Perfil
         new ListTile(
          title: mostrarTitulo("Perfil"),
          trailing: Icon(Icons.navigate_next, size: 44),
          leading: Icon(
            Icons.account_circle_outlined,
            color: Color.fromRGBO(212, 190, 230, 1), // mudar cor ícone  users
            size: 40
          ),

        // Vai para a página Busca
          onTap: () {
            Navigator.push(
            context,
             MaterialPageRoute(
              builder: (context) => Home() // Busca
              )
             );
          }
        ),

       //Configurações
       new ListTile(
          title: mostrarTitulo("Configurações"),
          trailing: Icon(Icons.navigate_next, size: 44),
          leading: Icon(
            Icons.settings_rounded,
            color: Color.fromRGBO(212, 190, 230, 1), // mudar cor ícone  gear
            size: 35
          ),

        // Vai para a página configurações
          onTap: () {
            Navigator.push(
            context,
             MaterialPageRoute(
              builder: (context) => Home() // configurações
              )
             );
          }
        ),


       // Logout
      new ListTile(
          title: mostrarTitulo("Sair"),
          trailing: Icon(Icons.navigate_next, size: 44),
          leading: Icon(
            Icons.logout_outlined,
            color: Color.fromRGBO(212, 190, 230, 1), // mudar cor ícone  gear
            size: 42
          ),

        // Vai para a página logout
          onTap: () {
            Navigator.push(
            context,
             MaterialPageRoute(
              builder: (context) => Home() // logout
              )
             );
          }
        ),

        ]
      )
    );
  }
}
