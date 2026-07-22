/*
================================================================================================
EXERCÓCIO 50: EXEMPLO PRÁTICO - FACTOR CONSTRUCTOR E INSTÂNCIA PRIVADA (SINGLETON)
=================================================================================================
*/
class SessaoUsuario {
  String? nomeUsuario;


  // 1. Construtor nomeado e provado (ninguem fora para instanciar direto)
  SessaoUsuario._interno();

  // 2. Instância estática e privada única na aplicação
  static final SessaoUsuario _instancia = SessaoUsuario._interno();

  // 3. Construtor fábrica público que SEMPRE retorna a mmesma instância
  factory SessaoUsuario() {
    return _instancia;
  }
}

void main() {
  // Criando duas variáveis acessando SessaoUsuario()
  var sessaoA = SessaoUsuario();
  sessaoA.nomeUsuario = 'Tito';

  var sessaoB = SessaoUsuario();

  // Como é o singleton, sessaoB aposta para a mesma instância que a sessaoA
  print('Nome na Sessão B: ${sessaoB.nomeUsuario}');
  print('Nome instância na memória? ${identical(sessaoA, sessaoB)}');

}

/*
===========================================================
BÓNUS: COMO O ENCAPUSLAMENTO FUNCIONA NO DART
=============================================================

📁 Estrutura do Projeto
Plaintext
meu_projeto/
├── banco_dados.dart   (Onde fica a regra de negócio/dados)
└── main.dart          (Onde roda a aplicação)
Arquivo 1: banco_dados.dart
Neste arquivo, vamos guardar informações sensíveis de um banco de dados local.

Dart
// arquivo: banco_dados.dart

// 1. Classe Privada: Só existe dentro de "banco_dados.dart"
class _ConexaoInterna {
  final String _stringConexao = "postgres://admin:senha_super_secreta@127.0.0.1:5432/meu_app";

  void _conectar() {
    print("Conectando ao banco de dados em: $_stringConexao...");
  }
}

// 2. Classe Pública: Outros arquivos PODEM usar
class GerenciadorDeDados {
  // Atributo Privado: Guarda a instância da classe privada
  final _ConexaoInterna _conexao = _ConexaoInterna();
  
  // Atributo Privado: Controla o estado de sincronização
  bool _estaSincronizando = false;

  // Getter Público: Permite APENAS LEITURA do estado de sincronização
  bool get estaSincronizando => _estaSincronizando;

  // Método Público: A porta de entrada segura para quem vem de fora
  void salvarSincronizar(String dados) {
    print("\n[GerenciadorDeDados] Iniciando processo...");
    
    _estaSincronizando = true;
    _conexao._conectar(); // Chama a classe e método privados internamente
    
    print("[GerenciadorDeDados] Salvando: '$dados'");
    print("[GerenciadorDeDados] Sucesso!");
    
    _estaSincronizando = false;
  }
}
Arquivo 2: main.dart
Neste arquivo, importamos o banco_dados.dart e tentamos interagir com ele.

Dart
// arquivo: main.dart

import 'banco_dados.dart';

void main() {
  var gerenciador = GerenciadorDeDados();

  // 1. Uso correto (Interface Pública)
  gerenciador.salvarSincronizar("Novo perfil de usuário");
  print("Status atual: Sincronizando? ${gerenciador.estaSincronizando}");

  // ========================================================================
  // 🔴 O QUE ACONTECE SE TENTARMOS ACESSAR OS MEMBROS PRIVADOS AQUI?
  // ========================================================================

  // ERRO 1: Tentar instanciar a classe privada
  // var conexao = _ConexaoInterna(); 
  // ❌ Erro de compilação: "The class '_ConexaoInterna' isn't defined."

  // ERRO 2: Tentar acessar o atributo privado diretamente
  // gerenciador._estaSincronizando = true;
  // ❌ Erro de compilação: "The getter/setter '_estaSincronizando' isn't defined."

  // ERRO 3: Tentar alterar o saldo/estado burlando as regras
  // print(gerenciador._conexao);
  // ❌ Erro de compilação: The getter '_conexao' isn't defined.
}



🔍 Explicação Detalhada da Lógica e dos Detalhes
1. O Princípio da Caixa Preta (Encapsulamento)
Quem está no main.dart (que no Flutter seria uma tela da sua interface) não precisa e não deve saber qual é a senha do banco, qual porta do servidor está sendo usada ou qual é a string de conexão.

Ao marcar a classe _ConexaoInterna e a variável _stringConexao com _, você esconde os detalhes de implementação e expõe apenas o necessário: o método salvarSincronizar().

2. Controle de Alterações Acidentais
No main.dart, se tentarmos fazer gerenciador._estaSincronizando = true;, o Dart nem deixa o código compilar.
Isso evita que outro desenvolvedor da equipe (ou você mesmo no futuro) altere o estado do sistema sem passar pelas validações corretas.

3. Leitura sem Permissão de Escrita (getter)
Note que disponibilizamos o getter:

Dart
bool get estaSincronizando => _estaSincronizando;
Isso é uma técnica fundamental no Flutter. Você permite que a tela leia o estado para exibir uma barrinha de progresso (loading), mas impede que a tela altere esse estado diretamente. A alteração só acontece controladamente via salvarSincronizar().

4. Por que no mesmo arquivo o _ não bloqueia?
Se você colocar o código de teste dentro do próprio arquivo banco_dados.dart, o Dart vai te deixar acessar _ConexaoInterna normalmente. Isso é intencional no Dart: tudo o que está no mesmo arquivo confia entre si. A barreira de proteção do _ só é ativada quando há um import.

*/