def filter_pos (lista : List Int) (flag : Nat) : List Int :=
  match lista with
  | [] => []
  | x :: xs => if flag == 1 then filter_pos xs 0 else [x].append (filter_pos xs 1)

#eval filter_pos [1, 2, 3, 4, 5] 1
