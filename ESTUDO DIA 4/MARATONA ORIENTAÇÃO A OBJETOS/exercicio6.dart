/*
==============================================================================
EXERCÍCIO 6: EXEMPLO PRÁTICO DO OPERADOR DE CASCATA OU CASCADE OPERATOR (..)
=============================================================================
*/
class Heroi {
	String nome = '';
	String poder = '';
	
	void apresentar() {
		print('$nome tem o poder de: $poder!');
	}
}

void main() {
	// Cascata em ação: configuramos tudo e chamamos o método de uma vez só!
	Heroi personagem = Heroi()
	..nome = 'Magneto'
	..poder = 'Controlar Campos Magnéticos'
	..apresentar(); // Executa o método direto na linha de criação
}
