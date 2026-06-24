// Calculand a idade aproximada de uma pessoa
void main(){
final anoDenascimento = 1967;
final anoAtual = 2026;

final calculoDenascimento = anoAtual - anoDenascimento;

print('A idade calculado foi de: $calculoDenascimento anos.');

if (calculoDenascimento > 65) {
    print("=====================================");
    print('Usuário elegível para aposentadoria.'); 
    print("=====================================");
  } else {
    print("=====================================");
    print("Usuário inelegível para aposentadoria.");
    print("=====================================");
  }


}
