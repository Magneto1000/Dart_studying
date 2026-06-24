//📥 Parte 1: Inserindo Dados via Terminal (Entrada de Dados)

/*Até agora, seu programa era um monólogo: você definia as variáveis no código 
e ele apenas exibia os resultados. Para fazer o programa ler o que você digita no terminal, usamos uma biblioteca nativa do Dart chamada dart:io (Input/Output - Entrada e Saída).
-------------------------------------------------------------
O comando que faz a leitura mágica é o stdin.readLineSync().
------------------------------------------------------------

O Conceito Teórico do stdin
* stdin: Significa Standard Input (Entrada Padrão), 
que no nosso caso é o seu teclado através do terminal do VS Code.

* readLineSync(): É uma função que congela a execução do programa e fica esperando
você digitar alguma coisa e apertar Enter. Tudo o que você digita entra no programa estritamente como uma String.

Veja a anatomia do código:*/

//Exemplo 1
/*import 'dart:io'; //Importando biblioteca para receber dados externos
//Iniciando programa
void main(){

  print('Digite o seu nome: ');

  String? nome = stdin.readLineSync(); //Programa congela e aguarda pelos dados serem inseridos

  print('Olá, $nome, seja bem-vindo!'); //função de output com mensagem de 'boas-vindas'

}
*/
//---------------------------------
/*Exemplo 2
import 'dart:io';

void main(){

print('Qual o seu nomne: ');

String? nome = stdin.readLineSync();

print('Seja bem-vindo, $nome');
} */
//--------------------------------
//Exemplo 3
/*import 'dart:io';

void main(){

print('Qual o seu nome: ');

String? nome = stdin.readLineSync();

print('Olá, como vc está meu chapa $nome');
}*/

//------------------------------------------
//Exemplo 4 - Com números
/*import 'dart:io';

void main(){
  print('Digite um némro:');
  String? numero = stdin.readLineSync();

  int numeroConvertido = int.parse(numero!); //o sinal de interogação(!) é um aviso para o dart que o valor o valor não está vázio

  print('O número que você digitou foi o: $numeroConvertido!');
}*/
//------------------------------------------
//Exemplo 5

import 'dart:io';

void main(){
  print('Digite um número: ');
  String? numero = stdin.readLineSync();
  int numeroConvertido = int.parse(numero!);

  print('O número digitado foi  o: $numeroConvertido.');



}