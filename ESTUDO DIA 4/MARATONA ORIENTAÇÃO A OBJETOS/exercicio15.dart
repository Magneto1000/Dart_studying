/*
==============================================================================
EXERCÍCIO 15: EXEMPLO PRÁTICO COM PARÂMETROS NOMEADOS USANDO O {required}
=============================================================================
*/
void nomeUsuario({required String nome}) {
	print('Nome: $nome');
}

void main() {
	nomeUsuario(nome: 'Simon Limonade Augusto');

}
