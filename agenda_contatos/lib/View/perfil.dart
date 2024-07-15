import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Guarda o ID do Contato selecionado
    final int id=0;

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
                  height: 240,
              )
            ]
          ),

          SizedBox(height: 5),

          //Nome
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              new Text(
                "Eduarda Bittencourt",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  wordSpacing: 3
               )
              )
            ],
          ),

          SizedBox(height: 10,),

          // Fone e E-mail
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Fone
              new Text(
                "(51) 98760-8765",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              //E-mail
              new Text(
                "duda-007@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),

        new Container(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            child: Divider(height: 5, color: Colors.black,)
          ),
        
          // Ações
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Ligar
              new Column(
                children: [
                  new Icon(Icons.local_phone_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                  
                  SizedBox(height: 10),

                  Text (
                    "Ligar",
                    style: TextStyle(
                      color: Color.fromRGBO(214, 189, 237, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              //Vídeo
               Column(
                children: [
                  new Icon(Icons.video_camera_front_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                  
                  SizedBox(height: 10),

                  Text (
                    "Vídeo",
                    style: TextStyle(
                      color: Color.fromRGBO(214, 189, 237, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              //Mensagem
               Column(
                children: [
                  new Icon(Icons.textsms_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                  
                  SizedBox(height: 10),

                  Text (
                    "Mensagem",
                    style: TextStyle(
                      color: Color.fromRGBO(214, 189, 237, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ),

              //E-mail
               Column(
                children: [
                  new Icon(Icons.mail_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                  
                  SizedBox(height: 10),

                  Text (
                    "Mensagem",
                    style: TextStyle(
                      color: Color.fromRGBO(214, 189, 237, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              )
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