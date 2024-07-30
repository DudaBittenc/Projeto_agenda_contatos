import 'package:flutter_application_1/Model/contato.dart';
import 'package:flutter_application_1/Model/db_helper.dart';

class ContatoRepository {
  static Future<int> insert(Contato contato) async {
    final db = await DbHelper.openConnection();
    return db.insert('contatos', contato.toMap());
  }

  static Future <List<Contato>> findAll() async {
    final db = await DbHelper.openConnection();
    final result = await db.query('contatos');
    return result.map((item) => Contato.fromMap(item)).toList();
  }
}