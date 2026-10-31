
shopping :-
    menu([coffee, milk, chocolate, apple, juice]).

% menu(Items): show the menu, read a choice, act on it
menu(Items) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    action(Choice, Items).

% d: display the basket, then show the menu again
action(d, Items) :-
    !,
    display_items(Items),
    menu(Items).

% a: add an item (at the end), then show the menu again
action(a, Items) :-
    !,
    write('enter the item you want to add it'), nl,
    read(New),
    append(Items, [New], NewItems),
    write('The item has been added'), nl,
    menu(NewItems).

% e: exit
action(e, _) :-
    !,
    write('Goodbye'), nl.

% anything else: tell the user and show the menu again
action(_, Items) :-
    write('Invalid choice, try again.'), nl,
    menu(Items).

% display_items(List): recursion over the list, stops at the empty list
display_items([]).
display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
