/*
==============================================================================
EXERCÍCIO 7: EXEMPLO PRÁTICO EXECUTANDO OPERAÇÕES
=============================================================================
*/
class Lampada {
	bool ligada = false;
	
	void alternar() {
		ligada = !ligada; // Inverte o estado (se true vira false, se false vira true)
		print(ligada ? 'LÂMPADA ACESSA' : 'LÂAMPADA APAGADQA');
	}
}

void main() {
	Lampada quarto = Lampada();
	quarto.alternar(); // Imprime: LÂMPADA ACESSA! 
}
