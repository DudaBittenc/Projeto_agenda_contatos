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
        future: ContatoRepository.findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(!snapshot.hasData || snapshot.data!.isEmpty){
            return const Text("Não há contatos");
          }
          var listOfContatos = snapshot.data!;
          return RefreshIndicator(
            onRefresh: () async {
              listOfContatos = await ContatoRepository.findAll();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 75),
              child: Container(
                  color: const Color.fromRGBO(45, 49, 53, 1),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: ListView.builder(
                    itemCount: listOfContatos.length,
                    itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                  "assets/img/fotos/27.png", //foto de perfil
                                  width: 75,
                                  height: 75,
                                  fit: BoxFit.cover)),
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
                    );
                  })),
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



