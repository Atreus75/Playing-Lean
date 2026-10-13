def hanoi (n : Nat) (O D A : Char) : String :=
  if n < 2 then
    s!"Mover disco 1 de {O} para {D}"
  else
    ((hanoi (n-1) O A D).append s!"\nMover disco {n} de {O} para {D} \n").append (hanoi (n-1) A D O)

def main : IO Unit :=
  IO.println (hanoi 5 'A' 'B' 'C')
