#import "../../preamble.typ" : *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Linear Algebra - Tutorial 3",
  type: "hw"
)


= Question 1

#homework_box([
    Let $T in L(RR^3)$ be defined by $T(x, y, z) := (x - 2y + z, y - z, x - z)$. 

    
    2) Find matrix $B$ of $T$ with $B^(-1) = {vec(1, 0, -1), vec(1, 0, 1), vec(1, 1, 0)}$
    
    3) Find $P$ such that $B = P^(-1) A P$

    4) Find a basis for $ker T$

    5) Find a basis for $T(V)$
])

== Part 1

#homework_box([
    Find a matrix $A$ of $T$
])




#pagebreak()

#homework_box([
  Given the following:
  
  $
    A := mat(-3, 1; 3, -2) \
    T in L("Sym"_2 RR) arrow.r T(M) = A^tack.b M + M A
  $
])

== Part 1

#homework_box([
  Find the matrix $H$ of $T$
])

$
  A^tack.b &= mat(-3, 3; 1, -2) \ \

  A^tack.b mat(a, b; c, d) &= mat(-3 a + 3 c, b - 2 d; - 3 b + 3 d, a - 2 c) \

  mat(a, b; c, d) A &=  mat(-3 a + 3 c, a - 2 c; - 3 b + 3 d, b - 2 d) 
$


$
  T(e_1) = T(mat(1, 0; 0, 0)) &=  mat(6, -4; -4, 2) \
  T(e_2) = T(mat(0, 1; 1, 0)) &=  mat(6, -4; -4, 2) \
$




