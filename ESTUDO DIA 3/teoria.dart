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
O Dart possuí um dos sistemas de parametização mais flexíveis e expressivos entre as linguagens modernas.
Ele divide os parâmetros em duas categorias.

a) Paramêtros POSICIONAIS OBRIGATÓRIOS (Abordagem Tradicional)
São aqueles definidos por padrão. Quem invoca a função é obrigado a passar os valores
exatamente na mesma ordem em que foram declaradas.

----------------------------------------------------
Dart.exemple.a

// Declaração
void conectarBanco(String url, int porta) {
  print('Conectando e $url na porta $porta');
}
void main() {
  // Execução obrigatória respeitando a ordem posicional
  conectarBnaco('Localhost', 5432);
}
-----------------------------------------------------------
Dart.exemple.b (repeated)
// Declaração
void conectarBanco(String url, int porta) {
  print('Conectando a $url na porta $porta');
}
void main() {
  // Execução obrigatória respeitando a ordem principal
  conectarBanco('Localhost', 5432);
}
-----------------------------------------------------------
Dart.exemple.c (repeated)
// Declaração
void concetarBanco(String url, int porta) {
  print('Conectando a $url na porta $porta');
}
void main() {
  // Execução obrigatório respeitando a ordem principal
  conectarBanco('Localhost', 5432);
}
----------------------------------------------------------

OBSERVAÇÃO: A desvantagem é se a função tiver muitos parâmetros, fica fácil esquecer a ordem ou o que cada valor signfíca visualmente.

---------------------------------------------
B) PARÂMETROS NOMEADOS {} (A base do framework Flutter)

Ao envolver os parâmetros de uma função com chaves {}, nós mudamos as regras do jogo.
A partir desde momento:
1º A ordem dos fatoresnão importa mais no chamado;
2º Nós somos obrigados apassar o nome do parâmetro seguindo por dois pontos ':' ao
chamar a função;
3º Por padrão, parâmetros dentro de chaves tornam-se opcionais. Para torná-los
obrigatórios mesmo dentro das chaves, usamos a palavra reservada required.

Abaixo podemos ver a clareza e elegância dessa sintaxe aplicada.
--------------------------------------------
Dart.exemple.a

// Declaração: 'remetente' é obrigatório, 'assunto' tem um valor padrão se não for passado
void enviarEmail({required String remetente, String assunto = 'Sem Assunto'}) {
  print('De: $remetente | Assunto: $assunto');
}

void main() {
  // A ordem não importa e o código fica extremamente legível
  enviarEmail(assunto: 'Relatório Over Power', remetente: john@upp.com);

  // Como 'assunto' tem valor padrão, posso omiti-lo com segurança
  enviarEmail(remetente: 'thayna@upp.com');
}
---------------------------------------------------
Dart.exemple.b (repeated)

// Usando o 'required' dentro das chaves os parâmetros passam a ser obrigatórios
void enviarEmail(required Sring remetente, String assunto = 'Sem assunto') {
  print('De: $remetente | Assunto: $assunto');
}

void main() {
  // A ordem não importa e o código fica extremamente legível
  enviarEmail(assunto: 'Relatório Over Power', remetente: 'juraci@upp.com');

  // Como 'assunto' tem valor padrão, posso omiti-lo com segurança
  enviarEmail(remetente: 'thayna@uup.com');
}
---------------------------------------------------
3. FUNÇÕES DE LINHA ÚNICA: Arrow Syntax ( => )

Qunado escrevemos funções simples, cujo corpo executa apenas uma única expressão de código e já retorna
e já retorna o resultando imediatamente, o uso de chaves {} e da palavra return
gera uma poluição visual desnecessária.

O Dart simplifíca isso com a Arrow Syntax (Síntaxa de Seta =>). A seta substitui as chaves e faz o 
return de forma implícita e automática sob os panos.

---------->
VERSÃO TRADICIONAL:
Dart.
int somar(int a, int b) {
  return a + b;
}
--------->
Versão com Arrow Syntax (Padrão Clean Code)
Dart.
int somar(int a, int b) => a + b; // O resultado da conta é retornando automaticamente
----------->
=============================================================================
