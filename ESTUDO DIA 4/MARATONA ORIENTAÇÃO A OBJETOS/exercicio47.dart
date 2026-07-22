/*
================================================================================================
EXERCÓCIO 47: EXEMPLO PRÁTICO -  VARIAÇÃO DE SETTER PRIVADO
=================================================================================================
*/

class PerfilUsuario {
  String _email = '';

  PerfilUsuario(String emailInicial) {
    email = emailInicial; // Usa-se o setter para valir logo na criação 
  }

  String get email => _email;

  //Seter com regra de validação
  set email(String novoEmail) {
    if (novoEmail.contains('@') && novoEmail.contains('')) {
      _email = novoEmail;
      print('E-mail atualizado para: $_email');
    } else {
      print('Erro: "$novoEmail" não é um e-mail válido. Valor mantido: "$_email"');
    }
  }
}

void main() {
  var perfil = PerfilUsuario('usuario@gmail.com');
  perfil.email = 'email_invalido.com'; // Tentativa inválida
  perfil.email = 'novo.usuario@dominio.com'; // Tentativa válida
}