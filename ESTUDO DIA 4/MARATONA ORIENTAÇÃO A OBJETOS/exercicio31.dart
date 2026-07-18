/*
================================================================================================
EXERCÓCIO 31: EXERCÍCIO PRÁTICO - Enum GERENCIAMENTO DE ESTADOS

O enum (ENUMERAÇÃO) É USADO PARA DEFINIR UM GRUPO FIXO DE VALORES CONSTANTES. NO FLUTTER, USAMOS
enums CONSTANTEMENTE PARA CONTROLAR O ESTADO DA TELA (EXEMPLO: CHUVA, DIA, NOITE)
=================================================================================================
*/

// Define os únicos estados possíveis para uma requisição de dados
enum StatusRequisicao { chuva, dia, noite}

class ProcessadorTempo {
  StatusRequisicao tempoAtual = StatusRequisicao.chuva;

  void atualizarCenario() {
    switch (tempoAtual) {
      case StatusRequisicao.chuva:
        print('Exibindo ícone de núvem...');
        break;
      case StatusRequisicao.dia:
        print('Carregando dados da API metereológica com sucesso!');
        break;
      case StatusRequisicao.noite:
        print('Exibindo mensagem de informações gerais do dia...');
        break;
    }
  }
}

void main() {
  ProcessadorTempo tela = ProcessadorTempo();

  tela.atualizarCenario(); // Ínicio carregando

  // Simulando que os dados foram captados da API
  tela.tempoAtual = StatusRequisicao.dia;
  tela.atualizarCenario();


}