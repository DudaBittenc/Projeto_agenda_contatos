class Contato {
  // Atributos
  int? id;
  final String nome;
  final String sobrenome;
  final String email;
  final String fone;

   // Construtor nomeado para criar instâncias de Contato
  Contato({
    this.id, // Id pode ser nulo se o contato ainda não foi salvo no banco
    required this.nome,
    required this.sobrenome,
    required this.email,
    required this.fone
  });

  // Converte um objeto Contato em um Map para ser inserido no banco de dados
  Map <String, Object?> toMap() => {
  'id': id,
  'nome': nome,
  'sobrenome': sobrenome,
  'email': email,
  'fone': fone
};
// Cria um objeto Contato a partir de um Map (resultado de uma consulta ao banco)
  factory Contato.fromMap(Map<String, Object?> map) => Contato(
    id: map['id'] as int?,
    nome: map['nome'] as String,
    sobrenome: map['sobrenome'] as String,
    email: map['email'] as String,
    fone: map['fone'] as String
  );
}



