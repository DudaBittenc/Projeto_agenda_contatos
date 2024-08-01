import 'package:flutter/material.dart';
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
      drawer:  MenuDrawer(),
      body: SingleChildScrollView(
        // Formulário
        child: Container(
         alignment: Alignment.center,
         padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
         margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
         decoration: const BoxDecoration(
          color: Color.fromRGBO(45, 49, 53, 1),
         ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Título
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
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


           
            const SizedBox(height: 15),

            //Botões
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botão Cadastrar
                Builder(builder: (BuildContext) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(156, 203, 251, 1)
                    ),
                    onPressed: () async {
                      cadastrar(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),

                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 51, 84, 1),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ), 
                    );
                }
              ),

                //Botão Limpar
                  Builder(builder: (BuildContext) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(156, 203, 251, 1)
                    ),
                    onPressed: () {
                      limpar();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),

                      child: const Text(
                        "Limpar",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 51, 84, 1),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
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
        margin: const EdgeInsets.only(bottom: 10),
              child: TextField(
                //Atributo que recebe valor do campo
                controller: controlador,

                decoration: InputDecoration(
                  labelText: nomeCampo,
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                 
                  //Borda do Input
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),

                  //Borda selecionada
                  focusedBorder: const OutlineInputBorder(
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
      SnackBar snackBar;
      if (id > 0) {
        // Deu Certo
        snackBar = SnackBar(content: Text('O contato $contato foi salvo com sucesso!'));
      } else {
        //Deu errado
        snackBar = const SnackBar(content: Text('Ops. Houve um erro inesperado!'));
      }
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (error) {
      print(error);
    }
     Future .delayed(
        const Duration(milliseconds: 2500),
        () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
        }
     );
    }
     //Limpar campos
  void limpar() {
    nomeController.text = "";
    sobrenomeController.text = "";
    emailController.text = "";
    foneController.text = "";
    fotoController.text = "";
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