// A lógica Geométrica da construção de uma Prirâmide em Dart
/*
Computadores remderizam textos de cima para baixo, linha por linha, e da esquerda para a
direita. Para desenhar uma pirâmide perfeita de, por exemplo, 4 linhas ed altura. O processador não enxerga 
apenas os asteriscos (*). Ele precisa desenhar espaços em branco antes dos asteriscos para
empurrá-los para o centro. 

Veja abaixo a anatomia de uma pirâmide na matriz. 
----------------------------------------------------------
Linha 1 (i = 0) -> _ _ _ * (3 espaços, 1 asterísco)
Linha 2 (i = 1) -> _ _ * * * (2 espaços, 3 asterísco)
Linha 3 (i = 2) -> _  * * * * (1 espaço, 4 asterísco)
Linha 4 (i = 3) -> * * * * * * * (0 espaços, 7 asterísco) 
----------------------------------------------------------
A fórmula Matemática:
Se a altura total é H e estamos na linha atual i (começamos do 0):

1. Qunatidade de Espaços: É sempre H - i - 1.
    * Na linha 0: 4 - 0 - 1 = 3 espaços;

2. Qualidade de Asteriscos: É sempre uma sequência de números ímpares, dada pela
fórmula (2 X i) +1.
  * Na linha 0: (2 X 0) + 1 = 1 asterísco.
  * Na linha 1: (2 X 1) + 1 = 3 asterísco.
  * Na linha 2: (2 X 2) + 1 = 5 asterísco.
  * Na linha 3: (2 X 3) + 1 = 7 asterísco.
=====================================================================
1. Abordagem com Laços Aninhados

Para construirmo de forma procedural pura, usamos o for principal para ocntrolar
as linhas, um for interno para dsenhar os espaços daquela linha, e outro for interno 
para desenhar os asteríscos.

Para imprimir na mesma linha sem quebrar a linha utomaticamente (O que o print naturalmente faz), 
usamos o comando stdout.write() presente na biblioteca dart:io.
Exemplo:

import 'dart:io';
void main() {
  int altura = 5;

  print('---- Gerador de pirâmides v1.0 ----');

  // Loop 1: Controla as linhas 9vertical)
  for (int i = 0; i < altura; i++) {
    // Loop 2: Desenha os espaços em branco necessários (horizontal)
    for (int j = 0; j < (altura - i - 1); j++) {
      stdout.write(' '); //Imprime o espaço sem quebrar a linha
    }
  // Loop 3: Desenha os asteríscos necessários (Horizontal)
  for (int k = 0; k < (2 * i + 1); k++) {
    stdout.write('*'); // Imprime o asterísco sem quebrar a linha
  }
  // O seguinte print colocado após o desenho dos espaços e asteríscos da linha atiual visaquebrar a linha
  print('');
  }
}
=========================================================================================
2. Abordagem Elegante, estilo Seiku (O "jeito Dart de programar")

O Dart possuí recursos modernos nas suas coleções que permitem reduzir darsticamnete
o uso de laços repetitivos. Podemos usar o operador de multiplicação de de Strings(")
para repetir os caracteres. Um jeito limpo e elegante de programar. 

void main() {
	int altura = 5;
	
	for (int i = 0; i < altura; i++) {
		// Multiplicamos o caractere de espaço e o do asterísco diretamente pelas formúlas
		String espacos = ' ' * (altura - i - 1);
		String asteriscos = '*' * (2 * i - 1);
	// Imprime a linha mostrada de uma vez só
		print('$espacos$asteriscos');
	}
}
--------------------------------------------------------------------------------------
2.1 Com 7 colunas de altura

void main() {
	int altura = 7;
	
	for (int i = 0; i < altura; i++) {
		//Multiplicamos os caracteres de espaço e o de asterísco diretamente pelas fórmulas abaixo.
		String espacos = ' ' * (altura - i - 1);
		String asteriscos = '*' * (2 * i - 1);
		
		//Imprime a linha marcada de uma vez só
		print('$espacos$asteriscos');
	}
}
-------------------------------------------------------------------------------------
2.2 
void main() {
	int altura = 10;
	
	for (int i = 0; i < altura; i++) {
		String espacos =  ' ' * (altura - i - 1);
		String	asteriscos =  '*' * (2 * i - 1);
		print('$espacos$asteriscos');
	}
}
-------------------------------------------------------------------------------------
2.3

void main() {
	int altura = 15;
	
	for (int i = 0; i < altura; i++) {
		String espacos = ' ' * (altura - i - 1);
		String asteriscos = '*' * (2 * i - 1);
		print('$espacos$asteriscos');
	}
-------------------------------------------------------------------------------------
2.4 Solicitando a altura para o usuário */

import 'dart:io';

void main() {
	print('Digite a aluta que você deseja construir a sua pirânide: ');
	String? altura = stdin.readLineSync();

	for (int i = 0; i < altura; i++) {
		String espacos = ' ' * (altura - i - 1);
		String asteriscos = '*' * (2 * i - 1);
		print('$espacos$asteriscos');
	}
}
-------------------------------------------------------------------------------------
