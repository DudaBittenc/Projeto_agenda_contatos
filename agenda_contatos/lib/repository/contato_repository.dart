import 'package:flutter_application_1/Model/contato.dart';
import 'package:flutter_application_1/Model/db_helper.dart';

class ContatoRepository {
  static Future<int> insert(Contato contato) async {
    final db = await DbHelper.openConnection();
    return db.insert('contatos', contato.toMap());
  }
}