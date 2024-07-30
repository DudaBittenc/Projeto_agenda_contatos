class Contato {
  // Atributos
  int? id;
  final String nome;
  final String sobrenome;
  final String email;
  final String fone;
  final String foto;

  //Construtor
  Contato({
    this.id,
    required this.nome,
    required this.sobrenome,
    required this.email,
    required this.fone,
    required this.foto
  });

  // Para salvar o objeto no banco de dados
  Map <String, Object?> toMap() => {
  'id': id,
  'nome': nome,
  'sobrenome': sobrenome,
  'email': email,
  'fone': fone,
  'foto': foto
};

  factory Contato.fromMap(Map<String, Object?> map) => Contato(
    id: map['id'] as int?,
    nome: map['nome'] as String,
    sobrenome: map['sobrenome'] as String,
    email: map['email'] as String,
    fone: map['fone'] as String,
    foto: map['foto'] as String
  );
}



