/*
==============================================================================
EXERCÍCIO 27: EXEMPLO PRÁTICO - CLASSES ABSTRATAS (abstract class)

UMA CLASSE ABSTRATA É UM 'CONTRATO PURO'. ELA NÃO PODE SER INSTANCIADA DIRETAMENTE
(NÃO SE PODE DAR O new OU CRIAR O OBJETO DIRETO DELA). SERVINDO EXCLUSIVAMENTE COMO
MOLDE ESTRUTURAL PARA OUTRAS CLASSES HERDAREM.
=============================================================================
*/

// Moldes abstratos definem REGRAS obrigatórias para os filhos
abstract class Autentificavel {
	void efetuarLogin(); // Método sem corpo! As filhas são OBRIGATÓRIAS a implementar.
}

class LoginGoogle extends Autentificavel {
	@override
	void efetuarLogin() {
		print('Autentificando com credenciais da conta Google...');
	}
}

void main() {
	// Autentifícavel a = Autentificavel(): // X Erro! Classe abstrata não pode ser instanciada
	LoginGoogle login = LoginGoogle();
	login.efetuarLogin(); 
}
