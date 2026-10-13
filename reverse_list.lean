def reverse (list : List Int) : List Int :=
  match list with
  | [] => []
  | x :: xs => (reverse xs).append [x]

#eval reverse [1, 2, 3, 4, 5]

