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
    required this.id,
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
}



