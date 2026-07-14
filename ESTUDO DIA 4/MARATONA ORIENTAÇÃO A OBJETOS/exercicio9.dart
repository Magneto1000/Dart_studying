/*
==============================================================================
EXERCÍCIO 9: EXEMPLO PRÁTICO EXECUTANDO OPERAÇÕES QUANDO O OBJETO ASSUME O VALOR PADRÃO
=============================================================================
*/
class Contador {
	int valor;
	// Se não passar nada, o 'valor começa valendo 0'
	Contador([this.valor = 0]);
}

void main() {
	Contador c1 = Contador(); // Não foi passado nada
	Contador c2 = Contador(10); // Foi passado o valor 10

	print(c1.valor); // Imprime = 0
	print(c2.valor); // Imprime = 10 
}
