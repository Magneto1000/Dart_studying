/*
==============================================================================
EXERCÍCIO 24: CONSTRUTOR COM VALORES PADRÃO (TEMA DE APP) 

MODELO DE CONFIGURAÇÕES VISUAIS DE UM APLICATIVO, EXATAMENTE COMO FLUTTER
FAZ COM ThemeData
=============================================================================
*/
class TemaApp {
	String corPrimaria;
	bool modoEscuro;
	
	// Construtor Padrão
	TemaApp(this.corPrimaria, this.modoEscuro);
	
	// Construtor Nomeado para o "Modo Noturno"
	TemaApp.escuro()
		: corPrimaria = 'Preto',
		  modoEscuro = true;
}
void main() {
	TemaApp temaPadrao = TemaApp('Azul', false);
	TemaApp temaNoturno = TemaApp.escuro();

	print('Tema 1: ${temaPadrao.corPrimaria} | Escuro: ${temaPadrao.modoEscuro}');
	print('Tema 2: ${temaNoturno.corPrimaria} | Escuro: ${temaNoturno.modoEscuro}');
}

