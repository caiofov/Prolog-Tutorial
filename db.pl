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
% finds out albert's grandchildren -> "parent(albert,X), parent(X,Y)"
get_grandchild :-
    parent(albert, X),
    parent(X,Y),
    write('Alberts granchildren are: '),
    write(Y), nl. 
%nl = new line

get_grandparent :-
    parent(X,carl),
    parent(X,charlie),
    %formating outputs
    format('~w ~s grandparent ~n',[X,"is the"]). %writes
    %~w -> variable | ~s -> string |~n -> new line

brother(bob, bill).

grand_parent(X,Y) :- %receives parameters - X:grandchild, Y-grandparent
    parent(Z,X),
    parent(Y,Z).

blushes(X) :- human(X).
human(derek). %blushed(derek) will also be true

stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).
%when we use hates(romeo, X), pops back X= tybalt

%checking the existence of a predicate: predicate(_) | ex.: male(_) -> true



what_grade(5) :- %if the grade is 5, it will execute the next line
    write('Go to kindergarten').

what_grade(6) :- %if the grade is 5, it will execute the next line
    write('Go to 1st Grade').

what_grade(Other) :- %it works like an "else" statement, but it will be executed if the other statements above are also true
    Grade is Other - 5, %Grande = Other-5
    format('Go to grade ~w', [Grade]).



%objects
%has(albert,olive). -> it's confunsing, we don't know it it's a pet or a food
owns(albert,pet(cat,olive)). %it's not confunsing anymore

customer(tom, smith, 20.55).
customer(sally, smith, 120.55). %customer(sally,_,Bal) -> we don't care for sally's last name. Her balance will be stored in the variable Bal

get_cus_bal(Fname, Lname) :- %gets customer balance based on their first and last name
    customer(Fname, Lname, Bal),
    write(Fname), tab(1), %tab(1) -> add 1 space
    format('~w owes us $~2f ~n', [Lname,Bal]). %2f -> two decimals | $ -> dolar sign(not from prolog)

vetical(line(point(X, Y), point(X, Y2))). %we defined what it means to be vertical