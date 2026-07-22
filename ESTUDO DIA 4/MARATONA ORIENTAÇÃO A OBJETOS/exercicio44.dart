/*
================================================================================================
EXERCÓCIO 44: EXEMPLO PRÁTICO - HERÂNÇA COM MÉTODO CORRETO NA ABSTRATA
=================================================================================================
*/
abstract class Notificacao {
  // Método abstrato (sem corpo)
  void enviar(String mensagem);

  // Método concreto (com implementação)
  void log(String mensagem) {
    print('Log [${DateTime.now().toIso8601String()}]: Enviado - "$mensagem"');
  }
}

class NotificacaoEmail extends Notificacao {
  @override
  void enviar(String mensagem) {
      log(mensagem); // Chama o método concreto herdado
        print('E-mail enviado com sucesso: "$mensagem"\n');
  }
}

void main() {
  Notificacao email = NotificacaoEmail();
  email.enviar('Seu código de verificação é 8492');
}