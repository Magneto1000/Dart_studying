/*
==============================================================================
EXERCÍCIO 7: EXEMPLO PRÁTICO NOMEADO MAIS DE UM CONSTRUTOR COM classe.name(). 
USADO COM DEMASIA NO FLUTTER COM OS MÉTODOS ListView.builder() e Image.assets()
=============================================================================
*/
class Telas {
	int idade1;
	int idade2;
	
	// 1. Construtor padrão
	Telas(this.idade1, this.idade2);
	
	// 2. Construtor nomeado
	Telas.diferente(this.idade1) : idade2 = 4;

}
void main() {
	
	Telas t1 = Telas(4, 8); // Usa o construtor Padrão
	Telas t2 = Telas.diferente(2); // Usa o construtor especializado 'diferente'

	print('Tela 1: ${t1.idade1} (${t1.idade2})');
	print('Tela 2: ${t1.idade1} (${t2.idade2})');
}
