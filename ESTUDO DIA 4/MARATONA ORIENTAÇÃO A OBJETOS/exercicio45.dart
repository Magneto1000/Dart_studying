/*
================================================================================================
EXERCÓCIO 45: EXEMPLO PRÁTICO  - MÚLTIPLAS INTERAÇÕES COM implements
=================================================================================================
*/

abstract class Autenticavel {
    bool autenticar(String senha);
}

abstract class Validavel {
  bool eValido();
}

// O implements é usaod aqui para obter contratos de múltiplas classes
class UsuarioAdmin implements Autenticavel, Validavel {
  final String usuario;
  final String _senhaSecreta = 'admin123';

  UsuarioAdmin(this.usuario);


  @override
  bool autenticar(String senha) {
    return senha == _senhaSecreta;
  }

  @override
  bool eValido() {
    return usuario.isNotEmpty && usuario.length >= 3;
  }
}

void main() {
  var admin = UsuarioAdmin('Admin');

  print('Usuário é válido? ${admin.eValido()}');
  print('Senha "123" correta? ${admin.autenticar("123")}');
  print('Senha "admin123" correta? ${admin.autenticar("admin123")}');
}