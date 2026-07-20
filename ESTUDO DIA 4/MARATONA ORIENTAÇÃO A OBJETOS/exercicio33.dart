/*
================================================================================================
EXERCÓCIO 33: SISTEMA DE VALIDAÇÃO DE IDADE
=================================================================================================
*/

class PerfilUsuario {
	String nome;
	int idade;

	PerfilUsuario(this.nome, this.idade);
	
	bool maiorDeIdade() => idade >18;
}

void main() {
	PerfilUsuario user = PerfilUsuario('Francisco Maia', 10);
		print('O usuário ${user.nome} tem permissão ${user.maiorDeIdade}');
}
