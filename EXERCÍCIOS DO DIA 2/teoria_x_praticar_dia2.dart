/*
========================================================================
BEM-VINDO AO DIA 2 DA NOSSA IMERSÃO DE DART!
HOJE É DIA DE ESTUDAR CONTROLE E FLUXO DE FLUXO E COLEÇÕES

"NO DIA 1 NÓS NOS FOCAMOS NA COMPREENSÃO DE CRIAR ETIQUETAR INFROMAÇÕES NA MEMÓRIA DO COMPOUTADOR
MANIPULANDO VARIÁVEIS DE INÚMEROS TIPOS. HOJE VAMOS APRENDER A DAR INTELIGÊNCIA AO SISTEMA OPERACIONAL
ATRAVÉS DE TOMADAS DE DECISÃO E A AGRUPAR VOLUMES MASSIVOS DE DADOS ESTRUTURADOS. ESSES CONCEITOS SÃO A 
ESPINHA DORSAL DE QUALQUER ARQUITETURA DE SOFTWARE, ESPECIALMENTE QUANDO FALAMOS DO CONSUMO DE
DADOS POR MEIO DE APIS EXTERNAS."
========================================================================

1. ESTRUTURAS CONDICIONAIS: BIFURCAÇÕES LÓGICAS
O controle de fluxo dita como o processador deve desviar o caminho de execução procedural 
dependendo das condições do ambiente.

=> if
=> else
=> if else

Os comandos acima são elementos de estruturas condicionais clássicas baseados em expressões 
booleanas. Nesta conjuntura, o computador avalia a primeira condição (if), se for falsa para a pŕoxima (else if),
até cair na última condição quando nenhuma foi atendida, a salvaguarda, (else).

========================================================================
Exemplo Dart.
========================================================================
// a)
void main(){
	int nivelAcesso = 2;
	
	if  (nivelAcesso ==1) {
		print('Acesso: Usuário Comum');
	} else if (nevelAcesso == 2) {
		print('Acesso: Gerente de Projetos') ;
	} else (
		print('Acesso: Administrador Geral');
	)
}
*/
========================================================================
//b)

import 'dart:io'; // importando a biblioteca para solicitar dados ao usuário

void main(){

	print('Digite o nome do aluno: ');
	String? nomeAluno = stdin.readLineSync(); //criando a variável e dando a referência

	list<String> alunosMatriculado = ['Marcos','Sakura','Alberto','Elias','Neemias','Josue', 'Maike','Aline','JOsé','Subaru','Alex','Robreto'];
	

	if (nomeAluno == alunosMatriculados) {
		print('O aluno $nomeAluno está matrículado');
	} else (
		print('Aluno não encontrado!');
	)
}
/*
========================================================================
2. CONTROLE ESTRUTURADO: switch


 










































*/
