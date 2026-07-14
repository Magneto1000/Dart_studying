/*
==============================================================================
EXERCÍCIO 8: EXEMPLO PRÁTICO EXECUTANDO OPERAÇÕES
=============================================================================
*/
 class Curso {
	String nome;
	// O atalho interpreta o argumetno e joga direto no atributo
	Curso(this.nome);
 }
 
 void main() {
	Curso engenharia = Curso('Engenharia de Software');
	print('Estudando: ${engenharia.nome}');
 }
