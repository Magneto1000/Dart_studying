void main() {
	
	var altura = 5; // Variável declara do tipo var representando a altura da pirâmide
	
	
	\\ Início do loop for, criação das candições e incremento contador
	for (int i = 0; i < altura; i++) {
		String espacos = ' ' * (altura - i - 1); \\ Trecho que cria as linhas com os espaços: (h = espaço * (i - 1))
		String asteriscos = '*' * (2 * i - 1); \\ Trecho que cria as linhas dos asteríscos: (base = asterisco * (2 * i - 1))
		\\ Saída com a variáveis declaradas interpoladas "chamadas" para a visualização
		print('$espacos$asteriscos');
	}
}
