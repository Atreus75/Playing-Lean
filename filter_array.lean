def aux (limite : Int) (lista : List Int) (indice : Nat) : (List Int) :=
  if h : indice < lista.length then
    have : indice < lista.length := h
    if lista[indice] < limite then
      [lista[indice]].append (aux limite lista (indice+1))
    else
      aux limite lista (indice+1)
  else
    []
  

def filtra_lista (limite : Nat) (lista : List Int) : (List Int) :=
  aux limite lista 0


#eval filtra_lista 50 [1, 10 ,20 ,54, 2, 3, 1, 98, 0]
