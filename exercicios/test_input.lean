def main : IO Unit := do
  IO.println "Nome: "
  let stdin <- IO.getStdin
  let input <- stdin.getLine
  let name := input.trimAscii
  IO.println s!"Olá, {name}!"

