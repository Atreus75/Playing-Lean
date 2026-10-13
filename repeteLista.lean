def repeteN (n : Int) (quant : Nat) : List Int :=
  if quant > 0 then
    [n] ++ (repeteN n (quant-1))
  else
    []

def repeteLista (n : List Int) (quant indice : Nat) : List Int :=
  if h : indice < n.length then
    have : indice < n.length := h
    (repeteN n[indice] quant) ++ (repeteLista n quant (indice+1))
  else
    []

#eval repeteLista [1, 2, 3] 3 0
