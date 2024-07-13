import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Guarda o ID do Contato selecionado
    final int id = 0;

   return Scaffold(
    //Barra de Título
    appBar: new Topbar(),

   // Menu (hambúrguer)
    drawer: MenuDrawer(),

   // Corpo do App
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          // Foto
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image.asset(
                  "img/fotos/27.png",
                  height: 350,
              )
            ]
          ),

          SizedBox(height: 25),

          //Nome

          SizedBox(height: 10,),

          // Fone e E-mail

        /*new Container(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            child: Divider(height: 5),
          ), */
        
          // Ações
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Ligar

              //Mensagem

              //Video

              //E-mail
            ],
          )
        ],
      ),
    ),
   // Botão flutuante (Editar)
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color.fromRGBO(214, 189, 237, 1),
      child: Icon(Icons.edit, size: 32, color: Colors.white),
      onPressed: () {} 
      
      ),

   );
  }

}