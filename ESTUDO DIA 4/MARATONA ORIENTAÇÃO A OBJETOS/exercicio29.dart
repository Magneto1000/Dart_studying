/*
==============================================================================
EXERCÍCIO 29: EXEMPLO PRÁTICO POLIMORFISMO E LISTA DE OBJETOS (List<Superclasse>)

O POLIMORFISMO PERMITE TRATAR DIFERENTES SUBCLASSES COMO SE FOSSEM O TIPO DO PAI.
ISSO É CRUCIAL QUANDO O FLUTTER PRECISA DESENHAR UMA LISTA DE ELEMENTOS VISUAIS 
VARIADOS.
=============================================================================
*/

abstract class ItemLista {
	void desenhar();
}

class TextoItem extends ItemLista {
	String texto;
	TextoItem(this.texto);
	
	@override
	void desenhar() => print('Exibindo texto: $texto');
}

class ImagemItem extends ItemLista {
	String url;
	ImagemItem(this.url);
	
	@override
	void desenhar() => print('Exibindo imagem: $url');
}

void main() {
	// Uma única lista capaz de garantir DIFERENTE objetos que herdam da mesma base
	List<ItemLista> feed = [
		TextoItem('Bem-VIndo ao app!'),
		ImagemItem('htpps://foto.com/perfil.jpg'),
		TextoItem('Confira as novidades abaixo.'),
	];
	
	print('--- DESENHANDO FEED POLIMÓRFICO ---');
	for (ItemLista item in feed) {
		item.desenhar(); // O Dart sabe exatamente qual método 'desenhar' executar!
	}
}
