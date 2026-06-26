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
Linha 3 (i = 2) -> _ * * * * (1 espaço, 4 asterísco)
Linha 4 (i = 3) -> * * * * * * * (0 espaços, 7 asterísco) 
----------------------------------------------------------
*/