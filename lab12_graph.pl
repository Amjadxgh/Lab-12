edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Al-Qatif', 'Madinah').
edge('Al-Qatif', 'Dammam').
edge('Dammam', 'Al-Qatif').

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(To, To, Path, Path).
path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
