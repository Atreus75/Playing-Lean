def sumOdd (l : List Int) : Int :=
  match l with
  | [] => 0
  | x :: xs => if (x%2!=0) then x + sumOdd xs else sumOdd xs 

#eval sumOdd [3, 2, 4, 6, 8, 10, 24, 7]
