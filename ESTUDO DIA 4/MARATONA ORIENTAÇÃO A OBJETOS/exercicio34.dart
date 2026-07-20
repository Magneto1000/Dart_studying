/*
================================================================================================
EXERCÓCIO 34:  EXERCÍCIO PRÁTICO SOBRE O POLIMORFISMO
=================================================================================================
*/

abstract class ItemLista {
  void desenhar();
}
class TextoItem extends ItemLista {
  String texto;
  TextoItem(this.texto);

  @override
  void desenhar() => print('Exibindo texto: $texto');
}

class ImagemItem extends ItemLista {
  String url;
  ImagemItem(this.url);

@override
void desenhar() => print('Exibindo imagem: $url');
}

void main() {
  // Uma única lista caáz de guardar diferentes objetos que herdam da mesma base
  List<ItemLista> feed = [
    TextoItem('Bem-Vindo ao App'),
    ImagemItem('https://foto.com/services_media'),
    TextoItem('Confira as novidade abaixo:'),
  ];

  print('--- DESSENHANDO FEED POLIMÓRFICO ---');
    for(ItemLista item in feed) {
      item.desenhar(); 
    }
}