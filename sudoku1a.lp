% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

row(1..4).
col(1..4).
num(1..4).


cell(X, Y) :- row(X), col(Y).

1 { value(X, Y, N) : num(N) } 1 :- cell(X, Y).

sudoku(X,Y,N):- initial(X,Y,N).



#show sudoku/3.
