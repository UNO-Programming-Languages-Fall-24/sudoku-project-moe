% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

num(1..4).

% Each cell (X,Y) has exactly one number
1 { cell(X,Y,N) : num(N) } 1 :- X = 1..4, Y = 1..4.

% Each number appears exactly once in each row
:- cell(X,Y1,N), cell(X,Y2,N), Y1 != Y2, X = 1..4, Y1 = 1..4, Y2 = 1..4, num(N).

% Each number appears exactly once in each column
:- cell(X1,Y,N), cell(X2,Y,N), X1 != X2, X1 = 1..4, X2 = 1..4, Y = 1..4, num(N).


% Assign initial values to cells
cell(X, Y, N) :- initial_value(X, Y, N).

#show sudoku/3.
