/*
================================================================================================
EXERCÓCIO 39: EXERCÍCIO DE REFORÇO DE ORIENTAÇÃO OBJETOS COM DESTAQUE PARA OS PARÂMETROS NOMEADOS
=================================================================================================
*/

class CartaoPerfil {
	String nome;
	String cargo;
	bool estaAtivo;

	// Os parâmetros entre {} tornam-se NOMEADOS. O 'required' exige o preenchimento.
	CartaoPerfil({
		required this.nome,
		required this.cargo,
		this.estaAtivo = true, // Valor padrão a ser mostrado.
	});
	
	void exibir() {
		print('$nome - $cargo | Status ${estaAtivo ? "Ativo" : "Inativo"}');
	}
}

void main() {
	// A ordem de escrita não importa porque usamos os nomes dos parâmetros!
	CartaoPerfil card = CartaoPerfil(
		cargo: 'Engenheiro de Software',
		nome: 'Augusto Santos',	
	);
	card.exibir();
}
