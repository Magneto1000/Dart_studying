/*
================================================================================================
EXERCÓCIO 40: EXERCÍCIO DE REFORÇO NOTIFICAÇÕES COM HERÂNÇA @override
=================================================================================================
*/

class Notificacao {
  String mensagem;
  Notificacao(this.mensagem);

  void enviar() => print('$mensagem');
}

class NotificacaoPush extends Notificacao {
  String dispositivoToken;

  NotificacaoPush(String mensagem, this.dispositivoToken) : super(mensagem);

  @override
  void enviar() {
    print('[PUSH] Enviando para o dispositivo $dispositivoToken: $mensagem');
  }
}
void main() {
  Notificacao push = Notificacao('Sua senha foi alterada: TOKEN 12333_QWWDWE2');
  push.enviar();
}