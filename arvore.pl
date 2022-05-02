/*
QUESTÕES  
1.  Considere a seguinte lista de fatos: */ 
pai(a,b).                    
pai(a,c).   
pai(b,d).   
pai(b,e).   
pai(c,f).   
/*
a) Defina um predicado irmao que seja verdadeiro se X e Y forem irmãos; 
b) Defina um predicado primo que seja verdadeiro se X e Y forem primos; 
c) Defina um predicado neto se X for neto de Y. 
 
Dica você pode usar not(X) para negar uma variável ou constante. 
*/

irmao(X, Y):-pai(Z, X), pai(W, Y), (W==Z)->write('sim');write('não'),nl,fail.

% {e, d}, f
primo(X, Y):-pai(Z, X), pai(W, Y), pai(A, Z), pai(B, W), (A==B)->write('sim');write('não'), nl, fail.

neto(X, Y):-pai(A, X), pai(Y, A)->write('neto');write('não neto').
