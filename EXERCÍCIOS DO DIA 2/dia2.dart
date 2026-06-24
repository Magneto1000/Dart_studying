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

 ==> O Loop for Tradicional (Contador TRadicional)
 É controlado por trÊs etapas explícitas: 
 1) A inicialização de uma variável controladora;
 2) A condição de parada;
 3) O incremento desta variável a cada ciclo,
 
 Esta estrutura é perfeita quando precisamos saber exatamente o índice númerico da interação atual.
 =======================================================================
 EXEMPLOS...
 A)
 */
 void main() {
	for (int i = 0; i < 3; i++) {
		print('Contagem atual: $i'); // Imprime  de 0 a 2.
	}
 }



















