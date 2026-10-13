def length (l : List Int) : Nat :=
  match l with
  | [] => 0
  | x :: xs => 1 + length xs

#eval length [1, 2, 3, 4, 5, 6]
