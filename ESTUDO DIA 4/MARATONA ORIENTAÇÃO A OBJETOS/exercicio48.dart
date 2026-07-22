/*
================================================================================================
EXERCÓCIO 48: EXEMPLO PRÁTICO - ESTADO PROVADO (SIMULANDO O STATE DO FLUTTER)
=================================================================================================
*/

class ContadorControler {
  int _contador = 0; // Estado privado

  int get valor => _contador;

  void _incrementar() {
    _contador++;
  }

  void _decrementar() {
    _contador--;
  }

  // Ponto de entrada público para ações externar
  void executarAcao(String acao) {
    switch (acao.toLowerCase()) {
      case 'incrementar':
        _incrementar();
        break;
      case 'decrementar':
        _decrementar();
        break;
      default:
        print('Ação Desnecessária!');
    }
  }
} 

void main() {
  var controller = ContadorControler();

  controller.executarAcao('Incrementar');
  controller.executarAcao('Incrementar');
  print('Valor atual: ${controller.valor}');

  controller.executarAcao('decrementar');
  print('Vlor atual: ${controller.valor}');
}