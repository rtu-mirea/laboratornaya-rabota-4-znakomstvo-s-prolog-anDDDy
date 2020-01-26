domains
  s = symbol
  i = integer
  r = real
predicates
  car(s)
  speed(s, r)
  horse_power(s,i)
  safety_car(s)
  
clauses
  car(vaz_2107).
  car(kia_rio).
  speed(vaz_2107, 16.9).
  speed(kia_rio, 11.2).
  horse_power(vaz_2107, 68). 
  horse_power(kia_rio, 123).
  safety_car(X):-
  	car(X), speed(X, Time), horse_power(X, Quantity), Time>=15, Quantity<=75.
 
goal
%safety_car(vaz_2107).
safety_car(kia_rio).
