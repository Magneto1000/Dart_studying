/*
==============================================================================
EXERCÍCIO 18: EXEMPLO PRÁTICO CONSTRUTORES NOMEADOS classe.name(), COMO BASTANTE 
USADO NO FLUTTER ListView.builder() e Image.assets()
=============================================================================
*/
class Paleta {
	String cor1;
	String cor2;
	String cor3;
	
	// Construtor Padrão
	Paleta(this.cor1, this.cor2, this.cor3);
	
	// Construtor nomado
	Paleta.novasCores(this.cor3) : cor1 = 'Azul', cor2 = 'Cinza';
}

void main() {
	
	Paleta c1 = Paleta('Branco', 'Verde', 'Roxo');
	Paleta c2 = Paleta.novasCores('Rosa');
	
		
	print('Paleta 1: ${c1.cor1}, ${c1.cor2} e ${c1.cor3}');
	print('Paleta 2: ${c2.cor1}, ${c2.cor2} e ${c2.cor3}');

}
