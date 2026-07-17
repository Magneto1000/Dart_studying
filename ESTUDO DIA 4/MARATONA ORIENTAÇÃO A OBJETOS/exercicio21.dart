/*
================================================================================================
EXERCÓCIO 21: EXERCÍCIO PRÁTICO - DESCRIÇÃO DE FILMES
=================================================================================================
*/

class Filme {
  String titulo;
  String diretor;
  int anoLancamento;

  Filme(this.titulo, this.diretor, this.anoLancamento);

  void exibirFicha() {
    print('$titulo ($anoLancamento) - Dirigido por $diretor)');
  }
}

void main() {
  Filme f1 = Filme('Interestelar', 'Christopher Nolan', 2014);
  f1.exibirFicha();
}