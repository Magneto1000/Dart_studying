/*
==============================================================================
EXERCÍCIO 18: EXEMPLO PRÁTICO CONSTRUTORES NOMEADOS classe.name(), COMO BASTANTE 
USADO NO FLUTTER ListView.builder() e Image.assets()
=============================================================================
*/

class Nomes {
  String nome1;
  String nome2;
// Construtor Padrão
  Nomes(this.nome1, this.nome2);
  // Construtor Nomeado
  Nomes.novoNome() : nome1 ='Marcos', nome2 = 'André';
}
void main() {

  Nomes n1 = Nomes('Elias','João');
  Nomes n2 = Nomes.novoNome();

  print('Os nomes são: ${n1.nome1} e ${n1.nome2}');
  print('Os novos nomes do segundo grupos são: ${n2.nome1} e ${n2.nome2}');
}