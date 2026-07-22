/*
================================================================================================
EXERCÓCIO 43: EXEMPLO PRÁTICO - REPOSITÓRIO DE DADOS
=================================================================================================
*/

abstract class UsuarioRepository {
  Future<void> salvar(String nome);
  Future<String?> buscarPorId(int id);
}

class UsuarioRepositoryMemory implements UsuarioRepository {
  final List<String> _bancoEmMemoria = [];

  @override
  Future<void> salvar(String nome) async {
    await Future.delayed(Duration(milliseconds: 300)); // Simula delay de rede/banco
    _bancoEmMemoria.add(nome);
    print('Usuário "$nome" salvo com sucesso!');
  }

  @override
  Future<String?> buscarPorId(int id) async {
    await Future.delayed(Duration(milliseconds: 300));
    if (id >= 0 && id < _bancoEmMemoria.length) {
      return _bancoEmMemoria[id];
    }
    return null;
  }
}

void main() async {
  UsuarioRepository repo = UsuarioRepositoryMemory();

  await repo.salvar('Ana');
  await repo.salvar('Tito');

  var usuario = await repo.buscarPorId(1);
  print('Usuário encontrado no ID 1: $usuario');
}