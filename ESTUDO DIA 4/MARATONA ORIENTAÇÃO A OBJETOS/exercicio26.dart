/*
==============================================================================
EXERCÍCIO 26: EXEMPLO PRÁTICO COM GETTERS(get) - PROPRIEDADES CALCULADAS
=============================================================================
*/

class Retangulo {
	double largura;
	double altura;
	
	Retangulo(this.altura, this.largura);
	
	// O Getter 'area' se comporta como uma variável, mas calcula em tempo real
	double get area => largura * altura;
}

void main() {
	Retangulo r = Retangulo(5.0, 10.0);
	print('Lado A: ${r.largura}m | Lado B: ${r.altura}m');
	print('A área total calculada via Get: ${r.area}m');

}
