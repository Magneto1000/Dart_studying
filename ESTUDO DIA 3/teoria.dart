/*
========================================================================
ATÉ O MOMENTO , NOSSOS SCRIPTS ERAM EXECUTADOS DE FORMA ESTRITAMENTE SEQUENCIAL
DENTRO DO BLOCO void main() {}. Na prática de Engenharia de Software profissional,
centralizar todo o código em um único bloco quebra um dos princípios mais importantes
desenvolvimento: o DRY (Don't Repeat Yourserlf).

AGORA APRENDEREMOS A ISOLAR A LÓGICA EM BLOCOS REUTILIZÁVEIS CHAMADOS FUNÇÕES,
DOMINANDO A ASSINATURA QUE TORNA O ECOSSISTEMA DO FLUTTER TÃO PODEROSO E ELEGANTE.
------------------------------------
1. A ANATOMIA DE UMA FUNÇÃO EM DART.
------------------------------------
Conceituralmente, uma função é um subprograma que recebe dados de entrada (parâmetros),
realiza uma computação isolada em seu próprio escopo e devolve um resultado (retorno) para que 
a chamou.

---- Toda função possuí uma assinatura formal dividida em 4 parte fundamentais:

---------------------------------------------------------------------------------------
Dart.exemplo

tipoDoRetorno nomeDaFuncao (tiopDoParametro parametro) {
	// Corpo da função (escopo isolado)
	return valorResultante;
}
----------------------------------------------------------------------------------------
* TIPO DE RETORNO -> Específica rigidamente o tipo de dado que a função devolveria 
(ex.: String, int, double). Se ela apenas executar um ação sem devolver nada, usamos void.

* NOME DA FUNÇÃO -> Identificador em formato lowerCamelCse.

* PARÂMETROS: Variáveis locais que recebem os dados externos necessários para a execuçãop do algoritmo.

* return: A palavra reservada que encerra a execução da função e despacha o valor resultante
de volta parao fluxo principal.

----------------------------------------------------
2. PARAMÊTROS OBRIGATÓRIOS vs. NOMEADOS PPCIONAIS
----------------------------------------------------

