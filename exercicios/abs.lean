def abs (l : List Int) : List Int :=
  match l with
  | [] => []
  | x :: xs => if x < 0 then [x*-1].append (abs xs) else [x].append (abs xs)

#eval abs [-1, -2]
