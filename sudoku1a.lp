% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n = 4.

row(1..n). 
col(1..n). 
num(1..n).

cell(X, Y) :- row(X), col(Y).

1 { sudoku(X, Y, N) : num(N) } 1 :- cell(X, Y).

sudoku(X, Y, N) :- initial(X, Y, N).

:- sudoku(X1, Y, N), sudoku(X2, Y, N), X1 != X2.
:- sudoku(X, Y1, N), sudoku(X, Y2, N), Y1 != Y2.

#show sudoku/3.
