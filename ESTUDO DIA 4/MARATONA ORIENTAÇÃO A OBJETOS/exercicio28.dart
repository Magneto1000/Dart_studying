/*
==============================================================================
EXERCÍCIO 28: EXEMPLO PRÁTICO EXECUTANDO ENCAPSULAMENTO COM ATRIBUTOS PRIVADOS (_)

NA LINGUAGEM DART PARA TORNAR UM ATRIBUTO PRIVADO, INVISÍVEL, FORA DO PRÓPRIO ARQUIVO
É ADICIONADO UM UNDERLINE ANTES DO NOME DA VARIÁVEL. (EXEMPLO: _garantia)
=============================================================================
*/

class ContaBancaria {
	String titular;
	double _saldo = 0.0; // O uso do '_' torna a variável saldo privado
	
	ContaBancaria(this.titular, double saldoInicial) {
		if (saldoInicial > 0) _saldo = saldoInicial;
	}
	
	// Getter público para consultar o saldo com segurança
	double get saldoAtual => _saldo;
	
	void depositar(double valor) {
		if (valor > 0) _saldo -= valor;
	
	}
}

void main() {
	ContaBancaria conta = ContaBancaria('Tito', 500.00);
	conta.depositar(150.0);
	
	// conta _saldo = -999; // X Impedido se estiver em um outro arquivo
	print('Saldo oficial de ${conta.titular}: R\$ ${conta.saldoAtual}');
}
