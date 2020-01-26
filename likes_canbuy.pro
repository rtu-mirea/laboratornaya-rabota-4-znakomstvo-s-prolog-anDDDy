domains
  s = symbol
  i = integer
  
predicates
  nondeterm likes(s,s)
  nondeterm can_buy(s,s)
  nondeterm cost(s, i)
  nondeterm have(s, i)
  nondeterm car(s)
 
clauses
  car(ford_mustang).
  car(chevrolet_camaro).
  car(dodge_challenger).
  car(nissan_skyline).
  likes(dima, ford_mustang).
  likes(dima, chevrolet_camaro).
  likes(dima, dodge_challenger).
  likes(dima, nissan_skyline).
  have(dima, 76000).
  cost(ford_mustang, 75000).
  cost(chevrolet_camaro, 69000).
  cost(dodge_challenger, 88000).
  cost(nissan_skyline, 91000).
  
  can_buy(A,B):-
  	likes(A,B), car(B), have(A, Money), cost(B, Price), Money>=Price.
