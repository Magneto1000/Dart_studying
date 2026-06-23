/*
======================================================================================
Estudo do dia 1 - Resenha
 1. FUNÇÃO PRINICPAL main()

No modelo arquitetural Dart todo fluxo de execução nasce obrigatoriamente em um único
ponto topológico, a função: main(). Ela é classificada como Entry Point (Ponto de Entrada)
da operação.
--> Quando se digita dart arquivo.dart o compilador ignora tudo o que está ao redor e caça essa assinatura exata para iniciar
o processo de execução sequencial.
==================================================================================

void main(){
	// O fluxo de execução procedural ocorre estritamente aqui dentro

}


=====================================================================================

--> void - TIpo de Retorno; uma palavra reservada que sinaliza ao compilador que esta função
executa uma rotina computacional, mas não retorna nenhum valor resultante para quem o invocou (o sistema computacional)
--> main - Identificador; O nome reservado que mapeia o ponto zero da aplicação;
--> () - Parâmetros; Determinam o escopo da função (dados externos) para a função. No momentos, vázios.
--> {} - Escopo/Blocos; Definem o corpo da função. Toda a instrução que você deseja executar deve estar contida dentro destas chaves.
==========================================================================================

2. VARIÁVEIS E TIPOS DE DADOS PRIMITIVOS

"Na arquitetura de coputadores a memória RAM é uma sequência de endereços hexadecimais. Uma variável é uma 
abstração de alto nível que associa um nome amigável a un espaço  alocado nessa memória, permitindo armazenar e manipular
dados.
O Dart adota o paradigma Strong Typed (Fortemente Tipado). Isso significa que todo dado
possuí um tipo mensurável, impedindo anomalias em tempo de execução 
(exemplo: como tentar somar um texto a um número inteiro)."

A linguagem nos fornece 4 tipos primitivos fundamentais: 
=> STRING
=> INTEIROS
=> DOUBLE (PONTO FLUTUANTE)
=> BOOLEANOS

A. Strings (CADEIA DE CARACTERES)
===========================
Dart
void main(){
	String nomeDoprojeto = 'Germini';
}
// Representa dados textuais. No ecossistema Dart, a convenção padrão (boas práticas) dita o
uso de aspas simples -  ' - para delimitá-la, reservando as aspas duplas apenas para casos onde o 
texto interino já possua aspas simples.
================================

B. int (INTEIROS)
================================
Dart
void main(){
	int numeroPar = 2; //Aloca números que não possuem representação decimal(valores discretos). Ocupa de 32 a 64 bits de
memória, dependendo da plataforma de compilação.
}
==============================

C. double (PONTO FLUTUANTE)
======================================
Dart
void main(){

	double numeroFracionado = 2.5; //Aloca números reais que possuem precisçao decimal. Segue o padrão internacional IEE-754
para a representação de ponto flutuante de precição dupla.

}
======================================

D. bool (BOOLEANOS)
===========================================
Dart
void main(){

	bool emProducacao = false; // O tipo de dado mais puro de lógica booleana. Ocupa apenas 1 bit conceitual e comporta 
estritamente dois estados true (verdade/ligado) ou false (falso/desligado). É o motor dos testes lógicos do seu sistema

	bool emProducao1 = true;
 
}

===========================================
3. INFERÊNCIA DE TIPO (var) vs Tipigem Explicita

O compilador do Dart é dotado de um analisador estático inteligente que permite duas abordagens 
de declaração na sintaxe.
==========================
Dart
void main(){

// Inferência Explicita (MANIFESTA)
	String desenvolvedor = 'Juraci';

//Eu como engenheiro, declaro abertamente o tipo na assinatura da variável. É altamente recomendada em contratos
de funções e arquiteturas complexas para garantir documentação direita no código. 

// INFERÊNCIA DO TIPO (VAR)
	var anoAtual = 2026; // ODart infere estritamente que 'anoAtual' é um 'int'
	//anoAtual = 'Dois Mil e Vinte e Seis; --> Erro de Compilação! Tipo incompátivel.'

//Ao utilizar a palavra reservada 'var, você delega ao compilador a função de descobrir o tipo da
variável com base no valor atribuído a direita do sinal de igual(=).
//Isso não torna o Dart uma linguagem dinamicamente tipada, pois uma vez compilada a linha correspondente,
o tipo é trancado para sempre.
}

====================================================
4. CONCATENAÇÃO VS INTERPOLAÇÃO DE STRINGS

Para exibir os dados de nossas variáveis unificadas em uma mensagem legível para o usuário,
passamos por duas abordagens evolutivas:

A - CONCATENAÇÃO (ABORDAGEM ANTIGA)
Consiste em 'somar' strings textuais com variáveis usando o operador aritmético de adição de adição (+).
É desencorajada no Dart porque força a conversão manual de tipos não-textuais e polui a legibilidade do código.
====================================================
Dart
void main(){
	print('Versão: ' + versaodoSDK.toString());
}
====================================================
B - INTERPOLAÇÃO DE STRINGS (ABORDAGEM PROFISSIONAL)
O Dart nos permite injetar variáveis diretamente dentro do escopo do texto usando o carectere especial
$. O compilador faz a conversão do tipo automaticamente sob os panos.
	* Para variáveis simples: Usa-se somente o $nomeDavariavel
	* Para expressoões ou operações: Usa-se ${expressao_aqui} --> {exemplo: chamadas ou operações matemáticas}
=============================
Dart 
void main(){

	String nomeDoprojeto = 'Germini';
	bool versaoDoprojeto = 2.1;
	print('O app $nomeDoprojeto está na versão $versaoDoprojeto');
}
=============================
*/
//EXERCÍCIO PRÁTICO 1 DE 10

void main(){

	// Declaração das variáveis utilizando tipagem explicita e boas práticas, lembre-se disso, por mais tentador que seja usar a inferência var, não faça isso!
	String nomeApp = 'Germini';
	String versaoApp = '1.0.0';
	int usuariosAtivos = 2400;
	bool estaOnline = false;
	
	// Renderização da mensagem utilizando Interpolação de Strings limpa (Nada de concatenação garoto(a)
	print('');
	print('============================================');
	print('     SISTEMA DE MONITORAMENTO DE APPS       ');
	print('============================================');
	print('Seja bem-vindo ao painel administrativo do $nomeApp.');
	print('Status atual do servidor: ${estaOnline ? "OPERACIONAL (ONLINE)" : "OFFLINE"}');
	print('Versão instalada: v$versaoApp');
	print('Métricas globais: $usuariosAtivos usuários engajados nas últimas 24h.');
	
/* 
==> OPERADOR TERNÁRIO (? :). Note que na linha do status atual, usou-se ${estaOnline ? "OPERACIONAL (ONLINE)" : "OFFLINE"}
dentro das chaves. Isso é uma estrutura de decisão compacta de uma linha. Ela lê: Se estaOnline for verdadeiro, exiba a primeira frase;
caso contrário, exiba a segunda. */
}
