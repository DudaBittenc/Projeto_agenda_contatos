
import 'package:sqflite/sqflite.dart';

class DbHelper{
  // Definindo um método estático para abrir a conexão com o banco de dados
  static Future<Database> openConnection() async{
    // Obtém o caminho para o diretório do banco de dados do dispositivo
    var path = await getDatabasesPath();
    //Define o nome do banco de dados
    var dbName = 'parking_database.db';
    //Combina o caminho e o nome do banco de dados
    var dbPath = '$path$dbName';

    //Abre o banco de dados no caminho especificado
    return await openDatabase(
      dbPath,
      version:1,
      onCreate: (db, version) async {//Retorno de chamada para criação do banco de dados
      // Cria a tabela 'contatos' com colunas especificadas
        await db.execute(
          'CREATE TABLE contatos( id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT(20) NOT NULL, sobrenome TEXT(30) NOT NULL, email VARCHAR(50) NOT NULL, fone TEXT(12) NOT NULL)'
        ); 
      },
    );
  }
}