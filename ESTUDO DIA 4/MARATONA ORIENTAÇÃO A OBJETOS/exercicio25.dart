/*
==============================================================================
EXERCÍCIO 25: EXEMPLO PRÁTICO -PARÂMETROS NOMEADOS ENTRE CHAVES {}

NO FLUTTER, QUASE TODOS OS CONSTRUTORES USAM CHAVES {}. ELES TORNAM A ORDEM
DOS PARÂMETROS IRRELEVANTES E EXIGEM QUE SE PASSE O TEMA DA PROPRIEDADE NO
MOMENTO DA CHAMADA.
=============================================================================
*/

class CartaoPerfil {
	String nome;
	String cargo;
	bool estaAtivo;
	
	// Os parâtros entre {} tornam-se NOMEADOS, o required exige o preenchimento.
	CartaoPerfil({
		required this.nome,
		required this.cargo,
		this.estaAtivo = true, // Valor padrão se nada for passado.
	});

	void exibir() {
		print('$nome - $cargo | Status: ${estaAtivo ? "Ativo" : "Inativo"}');
	}
}

void main() {
	// A ordem da escrita não importa porque usamos os nomes dos parâmetros
	CartaoPerfil card = CartaoPerfil(
		cargo: 'Engenheiro de Software',
		nome: 'Tito',
	);
	card.exibir();
}
