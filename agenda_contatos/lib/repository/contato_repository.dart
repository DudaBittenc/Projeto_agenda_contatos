import 'package:flutter_application_1/Model/contato.dart';
import 'package:flutter_application_1/Model/db_helper.dart';

class ContatoRepository {
   // Método para inserir um novo Contato no banco de dados
  static Future<int> insert(Contato contato) async {
    final db = await DbHelper.openConnection(); // Abre a conexão com o banco
    return db.insert('contatos', contato.toMap()); // Insere o contato convertido em Map
  }

 // Método para listar todos os contatos do banco de dados
  static Future <List<Contato>> findAll() async {
    final db = await DbHelper.openConnection(); // Abre a conexão com o banco
    final result = await db.query('contatos'); // Executa a query para selecionar todos os contatos
    return result.map((item) => Contato.fromMap(item)).toList(); // Converte o resultado em lista de Contato
  }

   // Método para remover um contato pelo ID
  static Future<int> remove(int id) async {
    final db = await DbHelper.openConnection();
    return await db.delete(
      'contatos', // Define a tabela alvo
      where: 'id = ?',  // Condição para a exclusão (onde o ID seja igual ao passado)
      whereArgs: [id], // Argumento para a condição (o ID do contato a ser removido)
    );
  }
}