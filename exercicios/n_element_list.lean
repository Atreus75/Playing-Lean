def n_list (size : Nat) : List Nat :=
  if size > 0 then
    [1].append (n_list (size-1))
  else
    []

#eval n_list 5

