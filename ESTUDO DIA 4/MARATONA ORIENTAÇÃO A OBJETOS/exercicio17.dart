/*
==============================================================================
EXERCÍCIO 17: 2º EXEMPLO PRÁTICO COM CONSTRUTORES NOMEADOS (classe.nome())

NO DART, PODE-SE TER MAIS DE UM CONSTRUTOR NA MESMA CLASSE. CHAMA-SE ISSO DE 
DE NAMED CONSTRUCTORS. ELES SERVEM PARA CRIAR VARIAÇÕES PREDEFINIDAS DO MESMO
OBJETO (MUITO USADO NO FLUTTER COMO ListenerView.builder() ou Image.assets())
=============================================================================
*/
class Botao {
	String nome;
	String cor;
	
	// 1. Construtor padrão
	Botao(this.nome, this.cor);
	
	// 2. Construtor Nomeado (Uma variação de fábrica para botões de alerta)
	Botao.alerta(this.nome) : cor = 'Vermelho';
}
void main() {
	Botao b1 = Botao('Salvar', 'Azul'); // Usa o construtor Padrão
	Botao b2 = Botao.alerta('Deletar Conta'); // Usa o construtor especializado para o Botão Alerta.

	print('Botão 1: ${b1.nome} (${b1.cor})');
	print('Botão 2: ${b2.nome} (${b2.cor})');
}

