/*
================================================================================================
EXERCÓCIO 49: EXEMPLO PRÁTICO - MEMBROS E CLASSES PRIVADS (_)
=================================================================================================
*/
// Classe privada: Só pode ser instânciada/usada dentrpo deste mesmo arquivo
class _CalculadoraInterna {
  int somar(int a, int b) => a + b;
  int multiplicar(int a, int b) => a * b;
}

// Classe pública que expõe o serviço
class ServicoMatematica {
  final _CalculadoraInterna _calculadora = _CalculadoraInterna();

  int executarSoma(int a, int b) {
    return _calculadora.somar(a, b);
  }
  int executarMultiplicacao(int a, int b) {
    return _calculadora.multiplicar(a, b);
  }
}

void main() {
  var servico = ServicoMatematica();
  print('Soma (10 + 15): ${servico.executarSoma(10, 15)}');
  print('Multiplicação (4 * 5): ${servico.executarMultiplicacao(4, 5)}');
}