/*
==============================================================================
EXERCÍCIO 13: EXEMPLO PRÁTICO COM PARÂMETROS NOMEADOS


NO DART PASSAR PARÂMETROS PELA POSIÇÃO, OU SEJA, EM ORDEM, É RARO. PARA SER MAIS DIRETO
USAMOS CHAVES '{}' PARA DARMOS NOMES AOS PARÂMETROS. ISSO EVITA QUE SE CONFUNDA A ORDEM DOS 
DADOS E TORNA O CÓDIGO EXTERNAMENTE LEGÍVEL.
=============================================================================
*/
//As chaves {} torna os parâmetros nomeados.
// O 'required' obriga quem chama a fornecer esse dado.

void criarUsuario({required String nome, required int idade, String cargo = 'Estudante'}) {
	print('Nome: $nome | Idade: $idade | Cargo: $cargo');
}

void main() {
	// A ordem não importa mais, passamos os parâmetros explicitamente.
	criarUsuario(
		idade: 34,
		nome: 'Josh Mack',
		// O cargo é opcional, se omitido assume o padrão 'Estudante'.
	);
}
