import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Model/contato.dart';
import 'package:flutter_application_1/View/home.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';
import 'package:flutter_application_1/repository/contato_repository.dart';

class Cadastro extends StatefulWidget {
  const Cadastro ({super.key});
  @override
  State createState() => _CadastroState();
  // Controladores dos campos imput
  }

class _CadastroState extends State<Cadastro> {
  final nomeController = TextEditingController();
  final sobrenomeController = TextEditingController();
  final emailController = TextEditingController();
  final foneController = TextEditingController();
  final fotoController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  Topbar(),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        // Formulário
        child: Container(
         alignment: Alignment.center,
         padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
         margin: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
         decoration: BoxDecoration(
          color: Color.fromRGBO(45, 49, 53, 1),
         ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Título
            new Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                "Cadastro de Contato",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),
              ),
            ),
            //Inputs (campos)
            campoInput("Nome", nomeController),
            campoInput("Sobrenome", sobrenomeController),
            campoInput("E-mail", emailController),
            campoInput("Telefone",foneController),
            campoInput("Foto", fotoController),


           
            SizedBox(height: 15),

            //Botões
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botão Cadastrar
                Builder(builder: (BuildContext) {
                  return ElevatedButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),

                      child: Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 51, 84, 1),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(156, 203, 251, 1)
                    ),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        cadastrar(context);
                      }
                    }, 
                    );
                }
              ),

                //Botão Limpar
                  Builder(builder: (BuildContext) {
                  return ElevatedButton(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),

                      child: Text(
                        "Limpar",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 51, 84, 1),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(156, 203, 251, 1)
                    ),
                    onPressed: () {
                      limpar();
                    },
                    );
                }
              ),
              ],
            )
          ],
         ),
        ),
      ),
    );
  }

  //Retorna a estrutura do campo input
  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                //Atributo que recebe valor do campo
                controller: controlador,

                decoration: InputDecoration(
                  labelText: nomeCampo,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                 
                  //Borda do Input
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),

                  //Borda selecionada
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54)
                  )
                ),
            ),
    );
  }

  //Cadastrar
  void cadastrar(BuildContext context) async {
    final contato = Contato(
      nome: nomeController.text, 
      sobrenome: sobrenomeController.text,
      email: emailController.text, 
      fone: foneController.text,
      foto: fotoController.text);
    try {
      final id = await ContatoRepository.insert(contato);
      var snackBar = null;
      if (id > 0) {
        // Deu Certo
        snackBar = SnackBar(content: Text('O contato $contato foi salvo com sucesso!'));
      } else {
        //Deu errado
        snackBar = SnackBar(content: Text('Ops. Houve um erro inesperado!'));
      }
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (error) {
      print(error);
    }
     Future .delayed(
        Duration(milliseconds: 2500),
        () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }
     );
    }
     //Limpar campos
  void limpar() {
    this.nomeController.text = "";
    this.sobrenomeController.text = "";
    this.emailController.text = "";
    this.foneController.text = "";
    this.fotoController.text = "";
  }
}

/*
 /   ContatoService service = ContatoService();

    //Guardar o último ID cadastrado
    int ultimoId = service.listarContato().length;

    Contato contato = Contato(id: ultimoId+1, nome: nome.text, sobrenome: sobrenome.text, email: email.text, fone: fone.text, foto: foto.text);

    
    // Envia o objeto preenchido para adicionar na lista
    String mensagem = service.cadastrarContato(contato);


    //Mostra a mensagem com SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
            mensagem, 
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromRGBO(0, 51, 84, 1)),
            ),
          duration: Duration(milliseconds: 2000),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromRGBO(156, 203, 251, 1),       
        )
      );

      //Redireciona para a tela Home
      Future .delayed(
        Duration(milliseconds: 2500),
        () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home())
          );
        }
      );
  }
  
  //Limpar campos
  void limpar() {
    this.nome.text = "";
    this.sobrenome.text = "";
    this.email.text = "";
    this.fone.text = "";
    this.foto.text = "";
  }
}
*/
