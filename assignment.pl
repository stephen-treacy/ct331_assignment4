%Definitions for isElementInList(El, List)

%Definitions for reverseList(List, ReversedList)

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)
%question 1
isElementInList(El, [El|_]).
isElementInList(El, [_|Tail]) :- isElementInList(El,Tail).

%question 2
mergeLists([],List2,List2).
mergeLists([Head|List1],List2,[Head|Merged]) :-
    mergeLists(List1,List2,Merged).

%question 3
reverseList([],[]).
reverseList([Head|Tail], Reversed) :-
    reverseList(Tail,List),
    mergeLists(List,[Head],Reversed).

%question 4
insertElementIntoListEnd(El,List,NewList) :-
    mergeLists(List,[El],NewList).
