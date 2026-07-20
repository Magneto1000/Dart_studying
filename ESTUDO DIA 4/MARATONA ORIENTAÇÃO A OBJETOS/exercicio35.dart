/*
================================================================================================
EXERCÓCIO 34:  EXERCÍCIO DO TIKTOK
=================================================================================================
*/
class ComponenteVisual {
  void desenharNaTela() {
    print('Desenhando um espaço vázio na tela');
  }
}

class CardVideo extends ComponenteVisual {
  String usuario;
  String legenda;
  int likes = 0;

CardVideo(this.usuario, this.legenda);

@override
void desenharNaTela() {
  print('=============================================');
  print('$usuario');
  print('[VÍDEO] $legenda]');
  print('s2 $likes');
  }

  void darCurtida() {
    likes++;
      print('O usuário $usuario recebeu uma curtida!');
  }
}
void main() {
  print('--- TIKTOK ENGINE ---');
  CardVideo postDoTito = CardVideo('tito.dev', 'Estudando Dart dom o Gemini');

  CardVideo postDaAmanda = CardVideo('amanda.123','Veja quantos gatos eu posso tirar dessa caixa...');

  CardVideo postDoZuza = CardVideo('zuza.dev','Instalando o VS CODE pela primeira vez no meu PC...');

  postDoTito.darCurtida();
  postDaAmanda.darCurtida();
  postDoZuza.darCurtida();

  postDoTito.desenharNaTela();
  postDaAmanda.desenharNaTela();
  postDoZuza.desenharNaTela();

}