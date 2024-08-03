import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/cadastro.dart';
import 'package:flutter_application_1/View/perfil.dart';
import 'package:flutter_application_1/View/resources/menu.dart';
import 'package:flutter_application_1/View/resources/topBar.dart';
import 'package:flutter_application_1/repository/contato_repository.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Título do App
      appBar: Topbar(),
      // Menu
      drawer:  MenuDrawer(),
      // Corpo do App
      body: FutureBuilder(
         // Define o future que será usado para buscar os dados
        future: ContatoRepository.findAll(),
        builder: (context, snapshot) {
            // Constrói a UI de acordo com o estado do future
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
          // Exibe um indicador de carregamento enquanto os dados são buscados
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(!snapshot.hasData || snapshot.data!.isEmpty){
             // Exibe uma mensagem caso não haja dados
            return const Text("Não há contatos");
          }
          var listOfContatos = snapshot.data!; // Lista de contatos recuperada
          return RefreshIndicator(
            // Permite atualizar a lista puxando para baixo
            onRefresh: () async {
              // Busca os dados novamente ao puxar para baixo
              listOfContatos = await ContatoRepository.findAll();
                // Atualiza a UI (necessário chamar setState)
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 75),  // Padding da lista
              child:  ListView.builder(
                    itemCount: listOfContatos.length, // Define o número de itens
                    // Constrói cada item da lista
                    itemBuilder: (context, index) {
              return Container(
                  color: const Color.fromRGBO(45, 49, 53, 1),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child:
                     ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.account_circle, size: 42, color: Color.fromRGBO(207, 229, 255, 1),),
                          Column(
                            children: [
                              Text(
                                listOfContatos[index].nome,
                                style: TextStyle(
                                    color: Color.fromRGBO(207, 229, 255, 1),
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(listOfContatos[index].fone)
                            ],
                          ),
                          const SizedBox(width: 15)
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Color.fromRGBO(207, 229, 255, 1),
                          size: 44,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Perfil()),
                          );
                        },
                      ),
                    )
              );
                  }),
            ),
          );
        },
      ), //Botão flutuante
      //Botão de Cadastro
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(214, 189, 237, 1),
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(213, 228, 247, 1),
          size: 36,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Cadastro()));
        },
      ),
    );
  }
}