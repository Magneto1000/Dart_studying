/*
Imagine que você trabalha no Instagram. Você não desenha cada post do zero. Você cria uma
fôrma (classe) que diz: "Todo post precisa ter o nome do usuário e a foto". Quando o usuário
arrasta o dedo para cima, o aplicativo pega os dados do banco e joga nessa fôrma, gerando
um post real (objeto) na tela. 

*/

// 1. O MOLDE (A Classe Pai de todas as telas do Flutter)
class ComponenteVisual {

	// Todo componente na tela precisa ser desenhado. No flutter, esse método se chama 'build'
	void desenharNaTela() {
		print('|_| Desenhando em um espaço na tela....');
	}  
}

// 2. Especialização (O card do Instagram que HERDA o componente)
class CardInstagram extends ComponenteVisual {
	//ATRIBUTOS: As informações que mudam de um post para outro
	String usuario;
	String conteudoPost;
	int curtidas = 0; // Já comweça em zero de fábrica
	
	// O CONSTRUTOR (O atalho 'this' serve para preencher o molde) 
	CardInstagram(this.usuario, this.conteudoPost);
	
	//O @OVERRIDE (A forma PAI desenhava um espaço vázio. O botão/card redesenha do seu jeito)
	@override
	void desenharNaTela() {
		print('\n ============================');
		print('/º--º\ @$usuario');
		print('|_| [Foto]: $conteudoPost');
		print('_-_ $curtidas curtidas');
		print('\n ============================');
	}
	
	// MÉTODOS: Comportamentos que o objeto pode sofrer
	void darCurtida() {
		curtidas++; // Aumenta 1 no contador
		print('--> @$usuario recebeu uma nova curtida!');
	}
}

void main() {
	print('---- INSTAGRAN ENGINE (POSTAGEM E CURTIDAS) ----');
	
	//Criando o PRIMEIRO objeto (Instanciando o molde para o Marcos)
	CardInstagram postDoMarcos = CardInstagram('marcos.engenharia', 'Construção a todo vapor!');
	
	//Criando o SEGUNDO objeto (Instanciando o mesmo molde para Alicia)
	CardInstagram postDaAlicia = CardInstagram('alicia_1998', 'Consegui, galera! Link na Bio...');
	
	//Desenhando os dois posts na tela
	postDoMarcos.desenharNaTela();
	postDaAlicia.desenharNaTela();
	
	//O usuário interage com o sistema (Dando Curtidas)
	postDoMarcos.darCurtida();
	postDaAlicia.darCurtida();
	
	//Quando desenha o post do Marcos mais de uma vez, o número de curtidas terá mudados apenas no dele!
	postDoMarcos.desenharNaTela();
	
	//O post da Alicia continua intactco com 0 curtidas, porque são objetos isolados na memória
	//postDaAlicia.desenharNaTela();
}
