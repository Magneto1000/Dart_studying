/*
================================================================================================
EXERCÓCIO 32: SISTEMA DE BANCO DE DADOS DE FILMES
=================================================================================================
*/

class Filme {
  String titulo;
  String diretor;
  int anoLancamento;

  Filme(this.titulo, this.diretor, this.anoLancamento);
  
  void exibirFicha() {
    print('$titulo ($anoLancamento) - Dirigido por: $diretor');
  }
}

void main() {
  Filme f1 = Filme('Tá Chovendo Hmburguer', 'Christopher Miller', 2009);
  f1.exibirFicha();
}