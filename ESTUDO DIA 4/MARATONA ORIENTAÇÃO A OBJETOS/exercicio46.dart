/*
================================================================================================
EXERCÓCIO 46: EXEMPLO PRÁTICO - MEMBROS E CLASSES PRIVADS (_)
ENCAPSULAMENTO DE CONTA BANCÁRIA
=================================================================================================
*/
class ContaBancaria {
  double _saldo = 0.0; //Atributo privado

  // Guetter público para leitura
  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$ $valor realizado. Novo saldo: R\$ $_saldo');
    }
  }

  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
      print('Saque de R\$ $valor realizado. Saldo restante: R\$ $_saldo');
    } else {
      print('Operação recusada: Saldo insuficiente (R\$ $_saldo)');
    }
  }
}

void main() {
  var conta = ContaBancaria();
  conta.depositar(200.0);
  conta.sacar(50.0);
}
