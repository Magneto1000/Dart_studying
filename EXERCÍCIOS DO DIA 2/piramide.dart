// A lógica Geométrica da construção de uma Prirâmide em Dart
/*
Computadores remderizam textos de cima para baixo, linha por linha, e da esquerda para a
direita. Para desenhar uma pirâmide perfeita de, por exemplo, 4 linhas ed altura. O processador não enxerga 
apenas os asteriscos (*). Ele precisa desenhar espaços em branco antes dos asteriscos para
empurrá-los para o centro. 

Veja abaixo a anatomia de uma pirâmide na matriz. 
----------------------------------------------------------
Linha 1 (i = 0) -> _ _ _ * (3 espaços, 1 asterísco)
Linha 2 (i = 1) -> _ _ * * * (2 espaços, 3 asterísco)
Linha 3 (i = 2) -> _  * * * * (1 espaço, 4 asterísco)
Linha 4 (i = 3) -> * * * * * * * (0 espaços, 7 asterísco) 
----------------------------------------------------------
A fórmula Matemática:
Se a altura total é H e estamos na linha atual i (começamos do 0):

1. Qunatidade de Espaços: É sempre H - i - 1.
    * Na linha 0: 4 - 0 - 1 = 3 espaços;

2. Qualidade de Asteriscos: É sempre uma sequência de números ímpares, dada pela
fórmula (2 X i) +1.
  * Na linha 0: (2 X 0) + 1 = 1 asterísco.
  * Na linha 1: (2 X 1) + 1 = 3 asterísco.
  * Na linha 2: (2 X 2) + 1 = 5 asterísco.
  * Na linha 3: (2 X 3) + 1 = 7 asterísco.
*/