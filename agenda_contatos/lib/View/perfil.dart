import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Model/contato.dart';
import 'package:flutter_application_1/Model/db_helper.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';
import 'package:flutter_application_1/repository/contato_repository.dart';
import 'package:sqflite/sqflite.dart';

class Perfil extends StatefulWidget {
  const Perfil ({super.key});
  @override
  State<Perfil> createState() => PerfilState();
}

class PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    //Barra de Título
    appBar:  Topbar(),

   // Menu (hambúrguer)
    drawer: MenuDrawer(),

   // Corpo do App
    body: FutureBuilder(
      future: ContatoRepository.findAll(),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.none ||
        snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        var listOfContatos = snapshot.data!;
        return RefreshIndicator(
          onRefresh: () async {
            listOfContatos = await ContatoRepository.findAll();
            setState(() {});
          },
          child: ListView.builder(itemCount: listOfContatos.last.id, itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
        
              SizedBox(height: 5),
        
              //Nome
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                   Text(
                        listOfContatos[index].nome,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Fone
                  Text(
                     listOfContatos[index].fone,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  //E-mail
                   Text(
                     listOfContatos[index].email,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
        
            Container(
                padding: EdgeInsets.only(top: 25, bottom: 25),
                child: Divider(height: 5, color: Colors.black,)
              ),
            
              // Ações
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Ligar
                   Column(
                    children: [
                       Icon(Icons.local_phone_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                      
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
                       Icon(Icons.video_camera_front_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                      
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
                       Icon(Icons.textsms_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                      
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
                       Icon(Icons.mail_outlined, color: Color.fromRGBO(214, 189, 237, 1), size: 48,),
                      
                      SizedBox(height: 10),
        
                      Text (
                        "Email",
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
        );
        },
        )
      );
      }
    ),
   // Botão flutuante (Excluir)
    
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color.fromRGBO(214, 189, 237, 1),
      child: Icon(Icons.delete, size: 32, color: Colors.white),
      onPressed: () {
        
      } 
      
      ),

   );
  }
}
  

