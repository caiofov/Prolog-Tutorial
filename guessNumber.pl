random(0,20, rightNumber).

start_game :- 
    guess.

game(rightNumber) :- 
    write('Thats right!').

game(X) :-
    X \= rightNumber,
    write(X),
    write(' is not the number'), nl,

guess :-
    write('Guess Number: '),
    read(Guess),
    game(Guess).
