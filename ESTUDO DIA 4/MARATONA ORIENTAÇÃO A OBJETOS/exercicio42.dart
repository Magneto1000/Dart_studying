/*
================================================================================================
EXERCÓCIO 42: EXEMPLO PRÁTICO DE COMPONENTE DE UI ABSTRATO (ESTILO FLUTTER)
=================================================================================================
*/

abstract class Widget {
	String build();
}

class Texto extends Widget {
	final String conteudo;
	
	Texto(this.conteudo);
		
	@override
	String build() {
		return 'Renderizando texto: "$conteudo"';
	}
}


class Botao extends Widget {
	final String rotulo;
	final Function() aoClicar;
	
	Botao({required this.rotulo, required this.aoClicar});
	
	@override
	String build() {
		return 'Renderizando botão com rótulo [$rotulo]';
	}
}

void main() {
	List<Widget> interface = [
		Texto('Bem-Vindo ao APP!'),
		Botao(
			rotulo: 'Entrar',
			aoClicar: () => print('Botão clicado!'),
		),
	];

	for (var widget in interface) {
		print(widget.build());
	} 
}
