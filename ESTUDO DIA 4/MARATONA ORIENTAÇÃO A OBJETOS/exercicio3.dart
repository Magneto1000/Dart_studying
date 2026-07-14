/*
============================================================================================
EXERCÍCIO 3.
CRIANDO UMA FUNÇÃO PAI PARA ILUSTRAR COMO CRIAR O ESPÇAO NA MEMÓRIA E COMO CHAMAR A CLASSE
=============================================================================================
*/
class Carro {
	String modelo = 'Sedan Padrão'; // Atributo com valor padrão
}

void main() {
	Carro meuCarro = Carro(); // Instanciando o objeto
	print(meuCarro.modelo); // Acessando o atributo --> Imprime: Sedan Preto
}
