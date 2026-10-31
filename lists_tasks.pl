% ARTI 303 - Lab 7 - Part 2 Lab Tasks

% ---------- Task 1: Delete every occurrence ----------
% deleteElement(X, List, Result): Result is List without any X.
% Test:
%   ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], L).
%   L = [2, 4, 3, 4, 3, 4, 2].
%   ?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], L).
%   L = [1, 2, 1, 4, 4, 1, 1, 1, 4, 2, 1, 1, 1].

% base case: nothing left to delete from
deleteElement(_, [], []).

% head is X: drop it and carry on with the tail
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

% head is not X: keep it and carry on with the tail
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).


% ---------- Task 2: Add at the end ----------
% add_at_the_end(X, List, Result): Result is List with X put at the end.
% Test:
%   ?- add_at_the_end(5, [1,2,3,4], L).   L = [1, 2, 3, 4, 5].
%   ?- add_at_the_end(d, [a,b,c], L).     L = [a, b, c, d].

% Solution 1: recursion - walk to the end of the list
add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

% Solution 2: using conc/append (the other accepted solution)
% add_at_the_end2(X, List, Result) :- append(List, [X], Result).
