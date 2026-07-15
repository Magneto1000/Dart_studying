/*
==============================================================================
EXERCÍCIO 14: EXEMPLO PRÁTICO COM PARÂMETROS NOMEADOS ({required})

No Flutter, passar argumentos pela posição (na ordem) é raro. Para sermoas mais direots
usamos as chaves '{}' para dar nome aos parâmetros. Isso evita que se confunda a ordem
dos dados e torna o código extremamente legível.
=============================================================================
*/
// As chaves '{}' tornam os parâmetros nomeados.
// O 'required' obriga quem chama a fornecer esse dado.

void criarCadastro({required String nome, required int idade, String casado = 'Sim'}) {
	print('Nome: $nome | Idade: $idade | Casado : $casado');
}

void main() {
	// A ordem não é mais relevante, neste caso, com o uso do required passamos os valores explicitamente
	criarCadastro(
	idade: 27,
	nome: 'Amélia Aymi',
	);
}	


