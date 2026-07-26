/*
===================================================================================================
--> CHECKLIS DO DART PARA O FLUTTER

(__1__) CONSTRUTORES & named parameters

No Flutter, a sistaxe de criação de interface depende totalemnte de parâmetros nomeados seletores const

----------------------------------------------------------
- Dart - 
// Exemplo clássico de como parâmetros nomeados funcionam no Dart:

class BotaoCustomizado {
  final String texto; // o modificador final indica que, uma vez recebido o valor no construtor, ele nunca mais poderá ser alterado (imutabilidade)
  final Function() oPressed;
  final bool carregando;

  // Construtor com parâmetros nomeados ({ }), obrigatórios (required) ou padrão (carregando = false)
  BotaoCustomizado({
    required this.texto,
    required this.onPassed,
    this.carregadno = false,
  })
}

------------------------------------------------------------

(__2__) Null Safety (?, !, late, ??)

Evitar erros em tempo de execução no Flutter exige domínio do sistema de nulabilidade do Dart:

* String? nome -> Pode ser nulo.
* String nome -> Nunca pode ser nulo.
* name ?? 'Visitante' -> Usa valor padrão se name for nulo.
* name!.toUpperCase() -> Força o compilador a entender que não é nulo (usar com cautela).

------------------------------------------------------------

(__3__) Asincronismo (Future, async, await)

Essencial para consumos de APIs, leitura de banco de dados ou chamados locais que levam tempo.

- DART - 

function<String> buscarDadosDoUsuario() async {
  // Simula uma requisição de HTTP
  await Future.delayed(Duration(seconds: 2));
  return "Dados carregados!";
}

-------------------------------------------------------------

(__4__) Coleções Avançadas (List, Map, spread operator e Collection If/for)
Útil para construir listas dinâmicas no Flutter:

- Dart -

List<String> categoria = ['Filmes', 'Séries'];
bool mostrarFavoritos = true;

List<String> menu = [
  ...categorias, // Spread Operator
  if (mostrarFavoritos) 'Favoritos', // Collection IF
];

====================================================================================================
*/