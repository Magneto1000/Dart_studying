/*
==============================================================================
EXERCÍCIO 16: EXEMPLO PRÁTICO - CONSTRUTORES NOMEADOS(class.nome())

NO DART, PODE-SE TER MAIS DE UM CONSTRUTUOR NA MESMA CLASSE. O NOME DESTA FUNÇÃO É 
A NAMED CONSTRUCTORS: ELES SERVEM PARA CRIAR VARIAIAÇÕES PREDEFINIDAS DO MESMO JEITO -
MUITO USADA NO FLUTTER COMO ListView.builder() ou Image.assets() 
=============================================================================
*/
class Botao {
	String texto;
	String cor;

	// 1. Construtor Padrão
	Botao(this.texto, this.cor);
	
	// 2. Construtor Nomeado (Uma variação de fábrica para botões de alerta)
	Botao.alerta(this.texto) : cor = 'Vermelho';
}

void main() {
	Botao b1 = Botao('Salvar', 'Azul'); // Usa o construtor padrão
	Botao b2 = Botao.alerta('Deletar Conta'); // Usa o construtor especializado de alerta.

	print('Botão 1: ${b1.texto} (${b1.cor})');
	print('Botão 2: ${b2.texto} (${b2.cor})');
}
