import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Model/contato.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';

class Cadastro extends StatefulWidget {
  @override
  State createState() => CadastroState();
  // Controladores dos campos impu
  }

class CadastroState extends State<Cadastro> {
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final email = TextEditingController();
  final fone = TextEditingController();
  final foto = TextEditingController();

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
            campoInput("Nome", nome),
            campoInput("Sobrenome", sobrenome),
            campoInput("E-mail", email),
            campoInput("Telefone",fone),
            campoInput("Foto", foto),


           
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
                    onPressed: () {
                      cadastrar();
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
  void cadastrar() {
    Contato contato = Contato(id: 1, nome: nome.text, sobrenome: sobrenome.text, email: email.text, fone: fone.text, foto: foto.text);
    // Envia o objeto preenchido para adicionar na lista
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