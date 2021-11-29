
start_game :- 
    random(0,20, RightNumber),
    rightNumber = RightNumber,
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
