/*
================================================================================================
EXERCÓCIO 37:  EXERCÍCIO DE ENCAPSULAMENTO E INSTÂNCIAS
=================================================================================================
*/

class Filmes {
  String titulo;
  String diretor;
  int anoLancamento;

  Filmes(this.titulo, this.diretor, this.anoLancamento);

  void exibirFicha() {
    print('$titulo ($anoLancamento) - Dirtor por %diretor');
  }
}
void main() {
  Filmes f1 = Filmes('Enterestalar', 'Christopher Nolan', 2014);
  f1.exibirFicha();
}