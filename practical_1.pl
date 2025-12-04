% 1. Write a PROLOG program to implement the family tree and demonstrate the family relationship.

% Genders
male(dashrath).
male(rama).
male(lakshmana).
male(bharata).
male(shatrughna).
male(luv).
male(kusha).
male(mukul).
male(ayush).
male(laksh).

female(kaushalya).
female(sumitra).
female(kaikeyi).
female(sita).
female(urmila).
female(mandavi).
female(shrutakirti).
female(sneha).
female(karishma).
female(siddhi).
female(diya).
female(kanishka).

% Parent–child relationships: parent(Parent, Child)
parent(dashrath, rama).
parent(dashrath, lakshmana).
parent(dashrath, bharata).
parent(dashrath, shatrughna).

parent(kaushalya, rama).
parent(sumitra, lakshmana).
parent(sumitra, shatrughna).
parent(kaikeyi, bharata).

parent(rama, luv).
parent(rama, kusha).
parent(sita, luv).
parent(sita, kusha).

% My Family
parent(mukul, ayush).
parent(mukul, karishma).
parent(sneha, karishma).
parent(ayush, diya).
parent(ayush, kanishka).
parent(sneha, kanishka).
parent(siddhi, diya).
parent(karishma, laksh).

% Marriages: married(Spouse1, Spouse2)
married(dashrath, kaushalya).
married(dashrath, sumitra).
married(dashrath, kaikeyi).
married(rama, sita).
married(lakshmana, urmila).
married(bharata, mandavi).
married(shatrughna, shrutakirti).
married(mukul, sneha).
married(ayush, siddhi).

% ---------------------------
% Defining derived relationships
% ---------------------------

% Child
child(Child, Parent) :- parent(Parent, Child).

% Father and Mother
father(Father, Child) :-
    male(Father),
    parent(Father, Child).

mother(Mother, Child) :-
    female(Mother),
    parent(Mother, Child).

% Son and daughter
son(Son, Parent) :-
    male(Son),
    parent(Parent, Son).

daughter(Daughter, Parent) :-
    female(Daughter),
    parent(Parent, Daughter).

% Grandparent and grandchild
grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).

grandfather(Grandfather, Grandchild) :-
    male(Grandfather),
    grandparent(Grandfather, Grandchild).

grandmother(Grandmother, Grandchild) :-
    female(Grandmother),
    grandparent(Grandmother, Grandchild).

grandchild(Grandchild, Grandparent) :-
    grandparent(Grandparent, Grandchild).

% Siblings
sibling(Person1, Person2) :-
    parent(P, Person1),
    parent(P, Person2),
    Person1 \= Person2.

brother(Brother, Person) :-
    male(Brother),
    sibling(Brother, Person).

sister(Sister, Person) :-
    female(Sister),
    sibling(Sister, Person).

% Uncle
uncle(Uncle, NieceNephew) :-
    male(Uncle),
    sibling(Uncle, ParentOfNieceNephew),
    parent(ParentOfNieceNephew, NieceNephew).

uncle(Uncle, NieceNephew) :-
    male(Uncle),
    married(Uncle, SiblingOfParent),
    sibling(SiblingOfParent, ParentOfNieceNephew),
    parent(ParentOfNieceNephew, NieceNephew).

% Aunt
aunt(Aunt, NieceNephew) :-
    female(Aunt),
    sibling(Aunt, ParentOfNieceNephew),
    parent(ParentOfNieceNephew, NieceNephew).

aunt(Aunt, NieceNephew) :-
    female(Aunt),
    married(Aunt, SiblingOfParent),
    sibling(SiblingOfParent, ParentOfNieceNephew),
    parent(ParentOfNieceNephew, NieceNephew).

% Cousins
cousin(Person1, Person2) :-
    parent(P1, Person1),
    parent(P2, Person2),
    sibling(P1, P2),
    Person1 \= Person2.
