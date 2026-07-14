/*
=========================================================================================
EXERCÍCIO 4. PROVANDO A INDEPÊNDENCIA DOS OBJETOS


Neste exemplo usaremos o Operador de Cascata (Cascade Operator): '..'
Sua função é permitir uma seuência de operações (como alterar atributos ou chamar métodos
) no mesmo objeto, descartando a necessidade de ficar repetindo o nome da varável várias 
vezes.
=========================================================================================
*/
class Jogador {
	String nome = '';
	int pontuacao = 0;
}

void main() {
	Jogador j1 = Jogador()..nome = 'Tito'; // Atalho para atribuir diretamente
	Jogador j2 = Jogador()..nome = 'Thayná';

	j1.pontuacao = 150; // altera apenas o j1
	
	print('${j1.nome}: ${j1.pontuacao}'); //Output: Tito: 150
	print('${j2.nome}: ${j2.pontuacao}');
}
