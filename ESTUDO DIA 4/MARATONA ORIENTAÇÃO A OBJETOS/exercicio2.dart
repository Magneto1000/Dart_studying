/*
============================================================================================
EXERCÍCIO 2: SISTEMA DE AUTENTICAÇÃO DE TELA DE LOGIN
---------------------------------------------------------------------------------------------
No Fluteer quando se cria um aplicativo, a tela de Login e a tela de Home são objetos diferentes,
mas ambos herdam de uma classe base chamado Tela (ou StatelessWidget no mundo real). Elas compartilham
a capacidade de serem abertas, mas cada uma desenha coisas completamente diferentes. 



[...]

VAmos imaginar a estrutura de uma aplicativo chamado Game Parking (um sistema que ensina a estacionar bem...)
TOdo elemento que o usuário clicar para abrir é uma tela.

-> A CLASSE PAI (TELA) sabe como carregar a instrução e fechar o aplicativo.
-> A CLASSE FILHA 1 (TELA DE LOGIN) adiciona os campos de texto.
-> A CLASSE FILHA 2 (TELAHOME) exibe a lista de dicar de estacionar para o usuário na forma de missões.

VAMOS CRIAR UMA TELA DE LOGIN PARA ESSE APLICATIVO QUE CHAMAREMOS DE GAME PARKING 
============================================================================================
*/


// Vamos começar criando uma classe PAI (-UMA CLASSE ABSTRATA BASE PARA QUALQUER TELA)

class Tela {
	String gameParking;

	// Construtor padrão com o atalho 'this'
	Tela(this.gameParking);
	
	
	// Método base que todas as telas terão
	void renderizar() {
		print('Carregando $gameParking ');
	}
}


// CLASSE FILHA 1 - Especializada na tela de LOGIN

class TelaLogin extends Tela {
	// Atributos expecíficos que somente a tela de login precisa ter
	String campoEmail = '';
	String campoSenha = '';
	
	//Construtor da FILHA: Ela recebe o nome e repassa para o Pai através do construtor
	TelaLogin() : super('Página de Login');


	// O @override para desenhar os campos de digitação na tela
	void renderizar() {
		super.renderizar(); // Executa o comportamento da classe PAI primeiro: (Carregando...)
		print('-------------------------------');
		print('[DIGITE AQUI O SEU EMAIL:]');
		print('-------------------------------');
		print('DIGITE AQUI A SUA SENHA');
		print('-------------------------------');
		print('          [ENTRAR]             ');
		print('-------------------------------');
	}
	// Método específico: Apenas a tela de Login pade tentar autenticar
	void simularDigitacao(String email, String senha){
		campoEmail = email;
		campoSenha = senha;
		print('O usuário digitou o e-mail: $campoEmail');
	} 
}

// CLASSE FILHA 2: Especializada na tela 2 - HOME (FEED)
class TelaHome extends Tela {
	List<String> licoes = ['Ajustar o retrovisor com a marçaneta traseita', 
	'Usar a marçaneta traseira como referência visual',
	'engatar a ré',
	'pisar do acelerador levemente e ir ajustando o volante seguindo a refrência da marçaneta traseira'
	];

	TelaHome() : super('Dashboaerd Principal');
	
	// O @override para desenhar a lista de tarefas na tela
	@override
	void renderizar() {
		super.renderizar(); // Executa o comportamento da classe pai
		print('--- PASSO-A-PASSO PARA ESTACIONAR COMO UM PROFISSIONAL---');
		for (var licao in licoes) {
			print('= $licoes');
		}
		print('---------------------------------------------------------');
	}
}

void main() {
	print('------INCIALIZANDO INSTRUÇÕES GAME PARKING------');
	
	// Criando o objeto da tela de Login
	TelaLogin paginaLogin = TelaLogin();

	// Renderizando a tela de Login para o usuário
	paginaLogin.renderizar();
	
	// O usuário interage digitando os dados
	paginaLogin.simularDigitacao('soarez@gmail.com', 'man123');
	print('\n[LOGIN ATIVADO COM SUCESSO!] \n[ENTRANDO...]');

	// Criando o objeto da tela Home
	TelaHome paginaHome = TelaHome();
	
	// Renderizar a lista de passos para o usuário
	paginaHome.renderizar();
}
