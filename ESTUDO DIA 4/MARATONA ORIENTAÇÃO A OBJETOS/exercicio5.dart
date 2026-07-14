/*
=======================================================================================
EXERCÍCIO 5: APROFUNDANDO NA COMPREENSÃO DO OPERADOR DE CASCATA OU CASCADE OPERATOR
----------------------------------------------------------------------------------------


O OPERADOR DE CASCATA OU CASCADE OPERATOR  É UMA DAS FERRAMENTAS MAIS FANTÁSTICAS DA LINGUAGEM
DART E É USADO MASSIVAMENTE NO FLUTTER.
A FUNÇÃO DE OPERADOR DE CASCATA OU CASCADE OPERATOR É PERMITIR QUE SE REALIZE UMA SEQUÊNCIA DE
OPERAÇÕES (COMO ALTERAR ATRIBUTOS OU CHAMAR MÉTODOS) NO MESMO OBJETO SEM PRECISAR FICAR REPETINDO 
O NOME DA VARIÁVEL VÁRIAS VEZES.




VAMOS ENTENDER COMO O OPERADOR DE CASCATA OU CASCADE OPERATOR FUNCIONA ATRAVÉS DOS EXEMPLOS
SEM O OPERADOR E COM O OPERADOR:
----------------------------------------------------------------------------------------
X SEM O OPERADOR DE CASCATA OU CASCADE OPERATOR (..)
[DART]

class Jogador{
	String nome = '';
	int pontuacao = 0;
}
void main() {
jogador j1 = Jogador(); //1. CRIAMOS O OBJETO NA MEMÓRIA
j1.nome = 'Tito'; //2. REPETE A VARIÁVEL PARS MUDAR O NOME
j1.pontuacao = 100; //3. REPETE A VARIÁVEL PARA MUDAR A PONTUAÇÃO

print('${j1.nome}: ${j1.pontuacao}');

}
------------------------------------------------------------------------------
COM O OPERADOR DE CASCATA OU CASCADE OPERATOR (..)
[Dart]

class Jogador {
	String nome = '';
	int pontuacao = 0;
}

void main() {
	Jogador j1 = Jogador()
	..nome = 'Tito';
	..pontuacao = 150;
	
	print('${j1.nome}: ${j1.pontuacao}');

}
------------------------------------------------------------------------------
COMO O DART PROCESSA ISSO?

O SEGREDO DOS DOIS PONTOS (..) DO OPERADOR DE CASCATA OU CASCADE OPERATOR É:

* QUANDO USAMNOS APENAS UM PONTO (.) A EXPRESSÃO RETORNA O RESULTADO DAQUELA LINHA.
POR EXEMPLO: j1.nome = 'Tito'; retorna o texto 'Tito'. SE FOSSE TENTADO FAZER Jogador j1
= jogador().nome = 'Tito';. O Dart apontaria erro porque tentaria salvar o texto 'Tito'
dentro da variável j1 (que espera o jogador);

** QUANOD SE USA DOIS PONTOS (..) O DART IGNORA O RESULTADO DA LINHA E RETORNA O PŔOPRIO
OBJETO ORIGINAL QUE INICIOU A CADEIA.
  

NA PRÁTICA ISSO SIGNÍFICA QUE:

1. Jogador(): O Dart CRIA UMA INSTÂNCIA LIMPA DO jogador NA MEMÓRIA.

2. ..nome = 'Tito': O DART ENTRA DENTRO DESSA INSTÂNCIA, MUDA O ATRIBUTO nome PARA 'Tito',
EM VEZ DE ENCERRAR A LINHA, ELE DEVOLVE O OBJETO INTEIRO DE VOLTA.

3. Jogador j1 = ..: A VARIÁVEL  j1 RECEBE O OBJETO PERFEITAMENTE MODIFICADO 
========================================================================================
*/
