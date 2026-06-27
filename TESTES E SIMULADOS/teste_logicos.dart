// Realizando comparações

import 'dart:io'; //Comando para baixar a biblioteca a biblioteca nativa dart:io (input/output)
/*O comando que faz a leitura é 'stdin.readLinSync()'
--> stdin significa Standart Input (Etrada Padrão), referente ao teclado ou outro tipo de recurso
--> O readLineSync() é a funçã oque congela a execução do do programa e aguarda pelas instruções e a confirmação e tudo que é digitado entra no progrma
(continuação)... como uma string.*/

void main(){ // Função parai niciar o programa
  // Varáveis de globais
  print('Digite um nome: '); // Função para solicitar um nome ao usuário
  String? nomeBuscar = stdin.readLineSync(); //o program fica congelado nesta função até algo ser inserido através do teclado e confirmado via enter
  // A palavra reservada do tipo string acompanhada por um ponto de interrogação serve para impedir que o...
   //(continuação)... retorne um valor do tipo null (nulo) caso o usuário feche o programa ou não didite nada
   //(continuação)... O Dart exige o uso do '?' para garantir a segurança do código null Safety.
  
  List<String> nomeDousuario = ['Marcos', 'João', 'Augusto', 'Lucas'];
  List<String> nomeAutorizado = ['Augusto', 'Lucas'];
 
  // Bloco comparatível
  if ( nomeAutorizado.contains(nomeBuscar) && nomeDousuario.contains(nomeBuscar)) {
    print('O nome $nomeBuscar está na lista dos convidados.');
  } else {
    print('Nome buscado, $nomeBuscar não está na lista de convidados');
  }
}