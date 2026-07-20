/*
================================================================================================
EXERCÓCIO 39:  EXERCÍCIO PRÁTICO: ENCAPSULAMENTO E INSTÂNCIAS
=================================================================================================
*/
class Filmes {
  String titulo;
  String diretor;
  int anoLancamento;

  Filmes(this.titulo, this.diretor, this.anoLancamento);

  void exibirFicha() {
    print('$titulo ($anoLancamento), Dirigido por $diretor');
  }
}

void main() {
  Filmes f = Filmes('Interestelar', 'Christopher Nolan', 2014);
  f.exibirFicha();
}