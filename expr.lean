inductive Expr where
  | num  : Int -> Expr
  | soma : Expr -> Expr -> Expr
  | mult : Expr -> Expr -> Expr
  | sub  : Expr -> Expr -> Expr

def avalia : Expr -> Int
  | Expr.num n      => n
  | Expr.soma n1 n2 => (avalia n1) + (avalia n2)
  | Expr.sub n1 n2 => (avalia n1) - (avalia n2)
  | Expr.mult n1 n2 => (avalia n1) * (avalia n2)

-- 2+2 * 5
def e1 : Expr :=
  Expr.mult 
    (Expr.soma 
      (Expr.num 2) 
      (Expr.num 2))
    (Expr.num 5)

#eval avalia e1
