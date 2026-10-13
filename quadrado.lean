-- Resolução do exercício 2327 da Beecrowd

def equalListSizes (l : List (List Nat)) : Nat :=
  match l with
  | [] => 0
  | x :: [] => x.length
  | x :: xs => if x.length == equalListSizes xs then x.length else 0

def isSquare (l : List (List Nat)) : Bool :=
  l.length == equalListSizes l

def equalSums (l : List (List Nat)) : Int :=
  match l with
  | [] => 0
  | x :: [] => x.sum
  | x :: xs => if x.sum == equalSums xs then x.sum else -1

def magicSquare (l : List (List Nat)) : Int :=
  let es : Int := equalSums l
  if (isSquare l) ∧ ((es) != -1) then es else -1


-- Testes
#eval magicSquare [[16, 3, 2, 13], [5, 10, 11, 8], [9, 6, 7, 12], [4, 15, 14, 1]]
