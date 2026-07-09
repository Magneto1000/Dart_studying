
// ------------------------------ DIA 4 ORIENTAÇÃO A OBJETOS --------------------------------------
/*
===================================================================================================

É IMPORTANTE DESTACAR PRIMEIRAMENTO QUE NO DART TUDO É UM WIDGET (UMA PEQUENA APLICAÇÃO), NADA MAIS QUE UMA
INSTÂNCIA DE UMA CLASSE. COMPREENDENDO A MECÂNICA POR TRÁS DAS CLASSES, CONSTRUTORES E HERÂNÇAS A 
COMPREENSÃO NECESSÁRIA PARA O DESENVOLVIMENTO DE APLICATIVOS SERÁ ALCANÇADA DE UMA FOMRA NATURAL E AMIGÁVEL
POIS SE TERÁ A CAPACIDADE DE LER UM CÓDIGO FLUTTER E ENTENDER O SEU FUNCONAMENTO IMPLÍCITO.
====================================================================================================

1. CLASSES E ATRIBUTOS: O MOLDE E A MATÉRIA-PRIMA

@----> CLASSES: 

A CLASSE É UM MOLDE, UMA PLANTA ARQUITETÔNICA OU A FORMA DE UM BOLO. ELA NÃO EXISTE FISICAMENTE NA MEMÓRIA
COMO UM DADO UTILIZÁVEL, ELA APENAS DEFINE REGRAS DE COMO ALGO DEVE SER CONSTRUÍDO.

@----> OBJETO (INSTÂNCIA):

O OBEJTO É O BOLO FÍSICO FEITO A PARTIR DA FORMA. É O ESPAÇO ALOCADO NA MEMÓRIA
 DO COMPUTADOR CONTENDO DADOS REIAS 

@-----> ATRIBUTO (PROPRIEDADES):

AS PROPRIEDADES SÃO AS VARIÁVEIS DECLARADAS DENTRO DAS CLASSES. ELAS DEFINEM AS CARACTERÍSTICAS
OU O ESTADO DO OBJETO.

@-----> METÓDOS:

OS METÓDOS SÃO FUNÇÕES DECLARADAS DENTRO DA CLASSE. ELAS DEFINEM O COMPORTAMENTO - O QUE O OBJETO É
CAPAZ DE FAZER.

==========================================================================================================
EXEMPLE DART.

- class Celular {
-	// Atributos (Caracteríticas)
-	String marca;
-	String modelo;
-	int bateria = 100;	
-
-	// Metódo (Comportamento)
-	void ligar {
-		print('$modelo está inicializando o sistema...');
-	}
-}
=========================================================================================================

2. CONSTRUTORES: A CERTIDÃO DE NASCIMENTO DO OBJETO

QUANDO DIGITAMOS "Celular meuCelular = Celular();". O DART PRECISA DE UM MECANISMO PARA INICIALIZAR
OS ATRIBUTOS DAQUELA INSTÂNCIA NA MEMÓRIA. ESSE MECANISMO É O CONSTRUTOR. 

(@@@) O CONSTRUTOR É UMA FUNÇÃO ESPECIAL QUE TEM EXATO O MESMO NOME DA CLASSE E NÃO POSSUÍ TIPO DE RETORNO.
                                                                                                                                                                                                                                                                                              
--------------------------------------------------------------------------------------------------------

A EVOLUÇÃO DO CONSTRUTOR NO DART

SE DEIXARMOS A CLASSE SEM CONSTRUTOR. O DART CRIA UM CONSTRUTOR VÁZIO IMPLÍCITO. MAS NA ENGENHARIA DE SOFTWARE
PROFISSIONAL, O PROCEDIMENTO CORRETO É OBRIGAR A PASSAGEM DE DADOS NO MOMENTO DA CRIAÇÃO DO OBJETO.

*** ABORDAGEM TRADICIONAL (ESTILO JAVA/C#)

class Usuario {
	String nome;
	
	Usuario(String nomeInformado) {
		this.nome = nomeInformado; // 'this' se refere ao atributo da própria classe
	}
}
---------------------------------------------------------------------------------------------------------

ATALHO SINTÁTICO DART (CONSTRUTOR COM ATRIBUIÇÃO DIRETA)

O Dart elimina a necessidade de criar um corpo de função apenas para repassar variáveis. Usando o
tris.propriedade direto na assinatura do construtor. O Dart captura o argumento e preenche
o atributo de forma automática e instântaneamente antes mesmo do objeto nascer.


class Usuario {
	String nome;

	// Atalho do Dart: faz exatamente a mesma coisa que o trecho referente do Java ou C#. 
	Usuario(this.nome);
}
-----------------------------------------------------------------------------------------------------------

3. HERANÇA (extends): A ÁRVORE GENEALÓGICA DO CÓDIGO

A HERANÇA É O MECANISMO PELO QUAL UMA CLASSE (CHAMADA SUBCLASSE OU CLASSE FILHA) PODE HERDAR
TODOS OS ATRIBUTOS E MÉTODOS DE OUTRA CLASSE (CHAMADA SUPERCLASSE OU CLASSE PAI).

NO FLUTTER, ISSO É VITAL, POIS EM UM PROCESSO DE CRIAÇÃO DE UMA TELA, POR EXEMPLO, NÃO SE CRIÁ
A TELA A PARTIR DO ZERO ABSOLUTO CONVERSANDO COM A PLACA DE VÍDEO. EM SUA CONSTRUÇÃO, SE CRIA UMA CLASSE QUE
ESTENDE (extends) AS CAPACIDADE DE UMA CLASSE BASE DO FLUTTER 
(COMO O StatelessWidget ou StatefulWidget).   

--------------------------------------------------------------------------------------------------------------

O PODER DO @OVERRIDE (SUBSCRITA DE MÉTODOS)

QUANDO UMA CLASSE FILHA HERDA UM MÉTODO DO PAI, ELA NÃO ESTÁ PRESA A SE COMPORTAR EXATAMENTE COMO ELE.
ELA PODE REALIZAR UM @override O QUE SIGNÍFICA LUDICAMENTE --> "Pai eu sei que você tem o seu jeito de 
executar esse método, mas eu vou escrever a minha própria versão deste comportamente." 

---------------------------------------------------------------------------------------------------------------
------------------------------------------EXEMPLO PRÁTICO------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
DART.*/

// 1. SUPERCLASSE (CLASSE PAI)

class Widget {
	// MÉTODO BASE QUE SERÁ HERDADO PELAS SUBACLASSES (CLASSES FILHAS)
	void renderizar() {
		print('Renderizando componentes básicos!');
	}
}

// 2. A SUBCLASSE (CLASSE FILHA) QUE HERDA AS CAPACIDADES DE WIDGET

class BotaoCustomizado extends Widget {
	// ATRIBUTO ESPECÍFICO DO BOTÃO
	String texto;
	
	// CONSTRUTOR UTILIZANDO O ATRIBUTO ESTRATÉGICO DO DART (this.text)
	
	BotaoCustomizado(this.texto);
	
	
	// ANOTAÇÃO QUE AVISA O COMPILADOR QUE ESTAMOS MODIFICANDO O COMPORTAMENTO DA SUPERCLASSE
	
	@override
	void renderizar() {
		// CUSTOMIZAÇÃO DE UM COMPORTAMENTO PARA A REALIDADE DE UM BOTÃO
		print('Renderizar o botão com o texto: $texto');
	}
}

// 3. FLUXO PRINIPAL DE EXECUÇÃO

void main() {
	print('---- SIMULADOR DE REBDERIZAÇÃO OO (UUP ENGINE) ----\n');
	
	// INSTANCIANDO A CLASSE BASE PARA VER O SEU COMPORTAMENTO ORIGINAL
	Widget componenteGenerico = Widget();
	componenteGenerico.renderizar(); // IMPRIME O COMPORTAMENTO PADRÃO
	
	print('----------------------------------------------------');
	
	//INSTANCIANDO A CLASSE FILHA PASSANDO O ARGUMENTO OBRIGATÓRIO DO CONSTRUTOR
	BotaoCustomizado meuBotaoSalvar = BotaoCustomizado('Salvar alterações');
	
	// CHAMAANDO O MÉTODO SUBSCRITO. O DART VAI EXECUTAR A VERSÃO ESPECIALIZADA!
	meuBotaoSalvar.renderizar();
	
}

/*
| --------------------------------------> DETALHES <--------------------------------------------------|

* extends WIdget: DIz ao Dart que o BotaoCustomizar é um widget.
Isso significa que se você criasse uma lista de List<Widget>, você poderia colocar 
botões dentro dela, pois o o filho guarda a identidade do pai.

* @override: Não é estritamente obrigatório para o código rodar, mas é uma diretiva
de compilador crucial. Se amanhã você errar uma letra do método pai (ex: digitar renderisar()). 
O @override faz o compilador acusar erro imediatamente. Salvando você de um bug silencioso. 
------------------------------------------------------------------------------------------------------- 

*/
