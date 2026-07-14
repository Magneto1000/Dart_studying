/*
==============================================================================
EXERCÍCIO 11: EXEMPLO EXPLORANDO O PODER DO @override
=============================================================================
*/
class Instrumento {
	void tocar() =>print('Fazendo som...');
}

class Violao extends Instrumento {
	@override
	void tocar() => print('Dedilhando as cordas do violão...');
}

void main() {
	Violao meuViolao = Violao();
	meuViolao.tocar(); // Imprime a versão especializada: Dedilhando
}
