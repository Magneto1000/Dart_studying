/*
================================================================================================
EXERCÓCIO 22: EXERCÍCIO PRÁTICO -  SISTEMA DE NOTIFICAÇÕES COM HERÂNÇA @override
=================================================================================================
*/

class Notificacao {
  String mensagem;
  Notificacao(this.mensagem);

  void enviar() => print('Enviando mensagem genérica: $mensagem');
}

class NotificacaoPush extends Notificacao {
  String dispositivoToken;
  NotificacaoPush(String mensagem, this.dispositivoToken) : super(mensagem);

  @override
  void enviar() {
    print('[Push] Enviando para o dispositivo $dispositivoToken: $mensagem');
  }
}

void main() {
  NotificacaoPush push = NotificacaoPush('Sua senha foi alterada', 'TOKEN_XYZ_123');
  push.enviar();

}