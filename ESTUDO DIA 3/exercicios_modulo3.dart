/* EXERCÍCIO 1: VALIDOR DE SENHAS COM ARROW SYNTAX

O que praticar: FUnções de linha única (=>), operadores lógicos e validação de dados

========================================================================
CENÁRIO: 
* CRIE UMA FUNÇÃO CHAMADA senhaEValida usando Arrow Syntax. ELA DEVE
RECEBER UMA String POR PARÂMETRO POSICIONAL E RETORNAR UM bool. A SENHA SÓ SERÁ
VÁLIDA (true) SE TIVER MAIS DE 8 CARACTERS E NÃO FOR IGUAL A "123455678".
 
* NO main: PEÇA PARA O USUÁRIO DIGITAR UMA SENHA VIA TERMINAL, CHAME A FUNÇÃO
E EXIBA SE A SENHA ATENDE AOS REQUISITOS DE SEGURANÇA DO SISTEMA.
========================================================================*/
// Importando a biblioteca dart:io para receber dados externos
import 'dart:io';

// Passo 1: Criação da função usando Arrow Syntax
// Ela recebe um string (posicional) e retorna o resultado da comparação lógica
bool senhaEvalida (String senha) => senha.length > 8 && senha != '12345678';
 

void main() {

	print('-------- SISTEMA SE SEGURÂNÇA -----------');
	
	stdout.write('Digite a sua senha: ');
	
	// Passo 2: Lendo a entrada do usuário no terminal de forma segura
	String entrada = stdin.readLineSync() ?? '';
	
	// Passo 3: Chamando a função a guardando o resultado booleano
	bool resultado = senhaEvalida(entrada);
	
	// Passo 4: Exibindo a resposta com base no booleano retornado
	print('\nAnalisando requisitos de segurânça...');
	
	if (resultado) {
		print('Senha válida!');
	} else {
		print('Senha Inválida!');
	}
}
*/
import 'dart:io';

int somar(int numero1, int numero2) => numero1 + numeero2;

void main() {
	print('---- CALCULADORA DE SOMA ----');
	
	stdout.write('Digite o primeiro número: ');
	int n1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0);
	
	stdout.write('Digite o segundo número: ');
	int n2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
	
	int resultado = somar(n1 + n2);
	
	print('O resultado da soma entre $n1 e $n2 é: $resultado');


}
