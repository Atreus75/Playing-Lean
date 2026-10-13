inductive ABB (α : Type) where
  | folha : ABB α 
  | no    : ABB α -> α -> ABB α -> ABB α

def conta_nos : ABB α -> Nat
  | ABB.folha => 0
  | ABB.no e v d => 1 + (conta_nos e) + (conta_nos d)

def a1 : ABB Nat :=
    ABB.no
      ABB.folha
      5
      ABB.folha

def insere_no (a : ABB Nat) (valor : Nat) : ABB Nat :=
  match a with
  | ABB.folha => ABB.no ABB.folha valor ABB.folha
  | ABB.no esq v dir   =>
    if valor > v then ABB.no esq v (insere_no dir valor)
    else if valor < v then ABB.no (insere_no esq valor) v dir
    else a


def altura : ABB α -> Nat
  | ABB.folha => 0
  | ABB.no e _ d => 1 + max (altura e) (altura d)

def lista_ABB_aux (a : ABB Nat) (l : List Nat) : List Nat :=
  match a with
  | ABB.folha => []
  | ABB.no esq v dir => 
    ((l.append (lista_ABB_aux esq l)).append 
        [v]).append
          (lista_ABB_aux dir l)


def busca_ABB (a : ABB Nat) (valor : Nat) : ABB Nat :=
  match a with
  | ABB.folha => a
  | ABB.no e v d => 
    if v == valor then a
    else if valor < v then busca_ABB e valor
    else busca_ABB d valor

def lista_ABB (a : ABB Nat) : List Nat :=
  lista_ABB_aux a []

#eval conta_nos (insere_no (insere_no (insere_no a1 6) 1) 7)
