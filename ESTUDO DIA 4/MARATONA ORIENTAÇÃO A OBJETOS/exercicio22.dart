/*
================================================================================================
EXERCÓCIO 22: EXERCÍCIO PRÁTICO - VERIFICANDO A MAIORIDADE DO USUÁRIO
=================================================================================================
*/

class PerfilUsuario {
  String nome;
  int idade;

  PerfilUsuario(this.nome, this.idade);

  // Método que retorna bool usando Arrow Syntax
  bool ehMaiorDeIdade() => idade >= 18;
}

void main() {
  PerfilUsuario user = PerfilUsuario('Tito', 25);
  print('O usuário ${user.nome} tem permissão? ${user.ehMaiorDeIdade()}');
}