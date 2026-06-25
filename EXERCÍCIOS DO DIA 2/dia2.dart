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
//========================================================================
//b)
/*
import 'dart:io'; // importando a biblioteca para solicitar dados ao usuário

void main() {

	print('Digite o nome do aluno: ');
	String? nomeAluno = stdin.readLineSync(); //criando a variável e dando a referência

	List<String> alunosMatriculados = [
	'Marcos','Sakura','Alberto','Elias','Neemias','Josue', 'Maike','Aline','JOsé','Subaru','Alex','Robreto'
	];
	
	bool alunoEncontrado = false; // Variável de controle (Sinalizadora/Flag) 


	// Laço para extrair cada 'aluno' de dentro da lista alunosMatriculados
	for (var aluno in alunosMatriculados) {
		if (aluno == nomeAluno) {
			alunoEncontrado = true;
			break; // Encontrado o nome o loop é encerrado
		}
	 }
	
	// Agora é testada a variável de controle
	if (alunoEncontrado) {
		print('O aluno $nomeAluno  está matrículado');
	} else {
		print('Aluno não encontrado!');
	}
}
*/
/*
========================================================================
//2. CONTROLE ESTRUTURADO: switch

void main() {
	String comando = 'PENDENTE';
	
	switch (comando) {
		case 'PENDENTE':
			print('Aguardando o processamento...');
			break; // A palavra 'break' identifique a execução para não testar os casos abaixo
		case 'CONCLUÍDO':
			print('Tarefa finalizada com sucesso.');
			break;
		default:
			print('Comando inválido ou desconhecido.'); // Equivalente ao 'else'
	}	
}

========================================================================

2. Coleções Estruturadas: List e Map

Na engenharia de dados, coleções são estruturas que organizam múltiplos elementos sob uma 
única referÊncia na memória RAM.

* List (Coleções Indexadas)
Essencialmente, a lista armazena elementos de forma sequencial onde a posição
de cada um é demarcada por um índice numérico qie inicia estritamente no 0.

* Map (Dicionários de Chave e Valor)
O Map é uma das estruturas  mais poderosas e cruciais da computação moderna. Em vez de acessar
um dado por um índice númerico invisível(0,1,2), vocÊ define uma Chave(Key) textual
personalizada para acessar um Valor(Value). É o formato exato utilizado para trafegar dados 
na internet (o famoso padrão JSON).

Sua sistaxe usa chaves {} e os pares são separados por dois pontos ( : ).
========================================================================
EXEMPLO 
========================================================================
A) DART

void main() {
	// Declara-se um Map onde as chaves são Strings e os valores podem dinâmincos (qualquer tipo)
	Map<String, dynamic> produto = {
	'nome': 'Teclado Mecânico',
	'preco': 259.90,
	'emEstoque': true
	};
	
	//Para acesaar o valor, basta chamar o nome Map seguido da chave entre colchetes 
	print(produto['nome']); //Imprime: Teclado Mecânico
	print(produto['preco']); //Imprime: 259.9

}
*/
/*
========================================================================

3. ESTRUTURAS DE REPETIÇÃO: Loops
========================================================================
Loops (laços de repetição) executam um bloco de código repetidas vezes enquanto uma
condição específica for verdadeira; Eles evitam a repetição desnecessária de linhas de código
(Princípio DRY - Don't Repeat Yourself).
----------------------------------------------------------
 ==> O Loop for Tradicional (Contador TRadicional)
 É controlado por trÊs etapas explícitas: 
 1) A inicialização de uma variável controladora;
 2) A condição de parada;
 3) O incremento desta variável a cada ciclo,
 Esta estrutura é perfeita quando precisamos saber exatamente o índice númerico da interação atual.
 =======================================================================
 EXEMPLOS...
 A)
 
 void main() {
	for (int i = 0; i < 3; i++) {
		print('Contagem atual: $i'); // Imprime  de 0 a 2.
	}
 }
================================================================== 
B)
void main() {
 for(int i = 0; i < 10; i++) {
  print('Contagem atual é: $i'); // imprime de 0 a 10
 }
}
==================================================================
C)
void main() {
  for(int i = 4; i < 7; i++) { // Começa no 4 e vai até 6
    print('A contagem atual é: $i');
  }
}
==================================================================

==> O Loop for-in (Iteração direta sobre coleções)
Se você tem uma lista e só quer ler os elementso dela de cima a baixo, sem se importar 
os números dos índices, o for-in limpa a sintaxe. Ele extraí cada item da lista automaticamente
a cada cilco.
==================================================================
Exemplos...
A)
void main(){
  List<String> linguagens = ['Dart', 'Python', 'C'];
  for (var linguagem in linguagens) {  
    print('Tecnologia ativa: $linguagens');
  } 
}
====================================================================
O LOOP while (Condicional)
O while (enquanto) é um laço baseado puramente em uma condição booleados externa.
Ele continuará rodando indeterminadamente até que a condição de teste se torna falsa.
Esse tipo de loop exige um graú de atenção com a condição interna, pois o seu esquimento poderá 
incorrer em travamente por loop infinito.
=====================================================================
EXEMPLOS...
A)
void main(){
	int bateria = 3;
	while (bateria > 0) {
		print('Dispositivo ligado. Bateria: $bateria');
		bateria--; // Determina o valor para que o loop tenha um fim.
	}


------------------------------------------------------------------------
B)
void main() {

	int lancamento = 0; // COndição externa do loop
	
	while (lancamento < 11) {
		print('Contagem repgressiva para o lançamento do foguete Marrokus I: $lancamento');
		lancamento++; // Condição interna para o encerramento do loop.
	}
}
------------------------------------------------------------------------
C) 
void main() {
	int contar = 0;
	
	while (contar < 4) {
		print('Contar até: $contar');
		contar++;
	}
}
------------------------------------------------------------------------
D)
void main() {
	int contarN = 0;
	
	while (contarN < 6) {
		print('Vamos contar até: $contarN');
		contarN++;
	}
}
========================================================================
DESAFIO FINAL DO DIA 2

Neste exercício, vamos usar o lopp for tradicional para varrer uma lista e usar a variável
contadora i para formatar a numeração de exibição na tela.*/

void main() {
	List<String> funcionalidades = [
		'Autentificação Biométrica',
		'Perfil de Desenvolvedor',
		'Painel Administrativo Germini',
		'Configuração de Segurança',
		'Histórica de Métricas'
	];
	
	print('--- MENU DE FUNCIONALIDADES ---');
	print('-------------------------------');
	
	// O loop começa em 0 e vai até o tamanho máximo da lista (.lenght)
	for (int i = 0; i < funcionalidades.length; i++) {
		print('${i + 1} . ${funcionalidades[i]}');
		print('====================================');
	}
	print('---------------------------------------');
}









