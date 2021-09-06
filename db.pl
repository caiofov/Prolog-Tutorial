/*knowledge base*/
/*where we will storage all the rules*/
% video: https://www.youtube.com/watch?v=SykxWpFwMGs

loves(romeo,juliet).
% loves -> a fact.
% romeo, juliet -> they are atoms and also arguments that will be passed to the function "loves". They start with lowercase letters
% defining rules
% :- means "if"
loves(juliet,romeo) :- loves(romeo,juliet).

%facts and rules are also name as clauses
%variables are objects that we can name at the time of execution. They start with uppercase letters]

happy(alice).
happy(albert).
happy(bob).
happy(bill).

with_albert(alice).

runs(albert) :-
    happy(albert).

dances(alice) :-
    happy(alice),
    with_albert(alice).

does_alice_dance :- dances(alice),
    write('When alice is happy and with albert she dances').

swims(bill) :-
    happy(bill).

swims(bill):-
    near_water(bill).

% swims(bob) :-
%     happy(bob),
%     near_water(bob).
% error because "swims(bob)" was not defined


male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert,bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% to realize all bob parents, write in the propmt "parent(X, bob)".
% who are the parents of bob that dance? wirte in the prompt "parent(X,bob), dances(X)"

%does carl have grandparents? write "parent(Y, carl), parent(X,Y)"
% find out albert's grandchildren -> "parent(albert,X), parent(X,Y)"
get_grandchild :-
    parent(albert, X),
    parent(X,Y),
    write('Alberts granchildren are: '),
    write(Y), nl. 
%nl = new line