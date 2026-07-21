/*
================================================================================================
EXERCÓCIO 41: SISTEMA DE PAGAMENTO COM CLASSES ABSTRATAS: SISTEMA DE PAGAMENTOS
=================================================================================================
*/
abstract class FormaDePagamento {
	void processarPagamento(double valor);
}

class PagamentoPix implements FormaDePagamento {
	@override
	void processarPagamento(double valor) {
		print('PagamentoR\$ %{valor.toStringAsFixed(2)} via QR Code Pix');
	}
}
class PagamentoCartao implements FormaDePagamento {
	@override
	void processarPagamento(double valor) {
		print('Pagando R\$ ${valor.toStringAsFixed(2)} no cartão de crédito');
	}
}

void main() {
	FormaDePagamento pix = PagamentoPix();
	FormaDePagamento cartao = PagamentoCartao();
	
	pix.processarPagamento(150.0);
	cartao.processarPagamento(89.90);
}
