% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

num(1..4).
row(1..4).
col(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y,N), sudoku(X,Y2,N), Y != Y2. 
:- sudoku(X,Y,N), sudoku(X2,Y,N), X != X2.  

n(2).

subgrid(X,Y,G) :- row(X), col(Y), n(N), G = 1 + ((X-1)/N)*N + (Y-1)/N.

#show sudoku/3.
#show subgrid/3.
