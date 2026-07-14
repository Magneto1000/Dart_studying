/*
==============================================================================
EXERCÍCIO 10: PASSANDO INFORMAÇÕES PÓR MEIO DO extends (HERÂNÇA BÁSICA)
=============================================================================
*/

class Animal {
	String nome = 'Max';
	void dormir() => print('$nome está Dormindo...');
}

// Gato Herda (extends) de aniaml
class Gato extends Animal {}

void main() {
	Gato meuGato = Gato();
	meuGato.dormir(); // Método do PAI rodando no filho --> Imprime: Dormindo
}
