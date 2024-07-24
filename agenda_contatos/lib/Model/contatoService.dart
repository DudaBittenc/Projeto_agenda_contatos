import 'package:flutter_application_1/Model/contato.dart';

class ContatoService {
  //Cria a lista de contatos
  static List<Contato> contatos = [];

  // Método para Cadastrar Contatos na Agenda
  String cadastrarContato(Contato contato) {
    contatos.add(contato);

    return "Novo cadastro: ${contato.nome} ${contato.sobrenome}";
  }

  List listarContato() {
    return contatos;
  }
}