/*
================================================================================================
EXERCÓCIO 38:  EXERCÍCIO DE CONSOLIDAÇÃO DE CONCEITOS: ENCAPSULAMENTO E INSTÂNCIAS
=================================================================================================
*/
class Filmes {
    String titulo;
    String diretor;
    int ano;

    Filmes(this.nome, this.diretor);

    void exibirFicha() {
        print('$titulo ($ano) - Diretor: $diretor ');
    }
}

void main() {
    Filmes f = Filmes('Enrrolados', 'None', 2014);
    f.exibirFicha();
}