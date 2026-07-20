/*
================================================================================================
EXERCÓCIO 36:  EXERCÍCIO DE CONSOLIDAÇÃO DO CONCEITO DE ENCAPSULATAMENTO E INSTÂNCIAÇÃO
=================================================================================================
*/
class Alunos {
  String aluno;
  String professor;
  int matricula = 1234455;

  Alunos(this.aluno, this.professor);

  void exibirDados() {
    print('O aluno: $aluno com a matrícula: $matricula está na turma do professor: $professor');
  }
} 

void main() {
  Alunos m = Alunos('Augusto Albuquerque', 'Sebastião Assunção');
  m.exibirDados();
}