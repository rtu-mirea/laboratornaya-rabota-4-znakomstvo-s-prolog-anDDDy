domains
  s = symbol
predicates
  male(s)
  female(s)
  nondeterm parent(s,s)
  nondeterm mother(s,s)
  nondeterm father(s,s)
  nondeterm  brother(s,s)
  nondeterm sister(s,s)
  nondeterm child(s,s)
  nondeterm grandmother(s,s)
  nondeterm grandfather(s,s)
  nondeterm uncle(s,s)
clauses
  male(nikolay).
  male(nikita).
  male(albert).
  male(georgiy).
  female(olga).
  female(vasilisa).
  parent(nikolay, olga).
  parent(nikolay, nikita).
  parent(nikolay, alex).
  parent(vasilisa, olga).
  parent(vasilisa, nikita).
  parent(vasilisa, alex).
  parent(albert, georgiy).
  parent(olga, georgiy).
  
  child(A,B):-
  	parent(B,A), A<>B.
  	
  mother(A,B):-
  	parent(A,B), female(A), A<>B.
  
  father(A,B):-
  	parent(A,B), male(A), A<>B.
  
  brother(A,B):-
  	parent(Z,A), parent(Z,B), male(A), A<>B.
  	
  sister(A,B):-
  	parent(Z,A), parent(Z,B), female(A), A<>B. 
  	
  grandmother(A,B):-
  	child(Y,A), child(B,Y), female(A), A<>B.
  
  grandfather(A,B):-
  	child(Y,A), child(B,Y), male(A), A<>B.
  
  uncle(A,B):-
  	child(B, Y), brother(A,Y), A<>B.
