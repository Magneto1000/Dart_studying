/*
==============================================================================
EXERCÍCIO 12: EXEMPLO PRÁTICO RESPEITANDO A ANCESTRALIDADE (O USO DO super)
=============================================================================
*/
import 'dart:io';
class Mensagem {
	void enviar() => stdout.write('Conectando ao servidor...');
}

class MensagemWhatApp extends Mensagem {
	@override
	void enviar() {
		super.enviar(); // Executa o código ao pai primeiro
			print('Texto enviado com criptográfia!');
	}
}

void main() {
	MensagemWhatApp zap = MensagemWhatApp();
	zap.enviar(); // Imprime: Conectando ao servidor... Texto enviado com criptográfia!
}
