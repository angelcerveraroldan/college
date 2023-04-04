#import "../../preamble.typ" : *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Integration Assignment 3",
  type: "hw"
)

= Problem 1

== Part 1

#homework_box([
  $
    dif / (dif x) bar.v_(x = 1) dif / (dif y)bar.v_(y = 2) integral_0^(x y) x w + e^(w^2 x^2) dif w
  $
])

To solve this, we will use substitution: 

$
  integral_0^(x y) x w + e^(w^2 x^2) dif w = integral_0^(x y) x w dif w + integral_0^(x y) e^(w^2 x^2) dif w 
$

$
  integral x w dif w = (x w^2)/2 + C_1
$

We will use substitution to solve the second integral, let $u = (w x)^2$

$
  u = (u w)^2 arrow.r.double.long (dif u) / (dif w) = 2 x^2 w arrow.r.double.long dif u = 2 x^2 w dif w
$


== Part 2 

#homework_box([
  $
    dif / (dif x) bar.v_(x = 2) integral_0^x (e^(sqrt(u)) + dif / (dif v) bar.v_(v = u) e^(u v x)) dif u
  $
])

$
  dif / (dif v) bar.v_(v = u) e^(u v x) = [u x e^(u v x)]_(v = u) = u x e^(u^2 x)
$

$
  arrow.r.double.long integral_0^x (e^(sqrt(u)) + dif / (dif v) bar.v_(v = u) e^(u v x)) dif u &= integral_0^x (e^(sqrt(u)) + u x e^(u^2 x)) dif u \ 
  & = integral_0^x e^(sqrt(u)) dif u + integral_0^x u x e^(u^2 x) dif u \
  & = 2 e^(sqrt(u)) (sqrt(u) - 1) + (e^(u^2 x))/2
$

Above, we needed to solve the integral: 

$
  integral_0^x u x e^(u^2 x) dif u 
$

To solve that integral, let $p = u^2$, then, $dif p = 2 u dif u$, and so, after substitution: 

$
  integral x e^(space p x) 1/2 dif p = x/2 integral e^(space p x) dif p = x/2 e^(space p x)/x + C = e^(space p x)/2 + C 
$

$
  arrow.r.double.long dif / (dif x) bar.v_(x = 2) integral_0^x (e^(sqrt(u)) + dif / (dif v) bar.v_(v = u) e^(u v x)) dif u 
  &= dif / (dif x) bar.v_(x = 2) (2 e^(sqrt(u)) (sqrt(u) - 1) + (e^(u^2 x))/2) \
  &= [3/2 e^x^3 x^2 + e^(sqrt(x))]_(x = 2) \
  &= 6 e^8 + e^(sqrt(2)) \
$
#pagebreak()

= Problem 2

== Part 1

#homework_box([
  Compute $integral_(-3)^(7) "sgn"(x)$  where the sgn function is defined as $"sgn": RR arrow.r RR$

  $
    "sgn"(x) := cases(
      1 "if" x > 0, 
      0 "if" x = 0, 
      -1 "if" x < 1
    ) 
  $
])

$
  integral_(-3)^(7) "sgn"(x) 
    &= integral_(-3)^(0) "sgn"(x) + integral_(0)^(7) "sgn"(x) \
    &= integral_(-3)^(0) -1 + integral_(0)^(7) 1 \ 
    &= -x bar.v_(-3)^0 + x bar.v_0^7 \ 
    &= - (0 - (-3)) + (7 - 0) \
    &= -3 + 7 = 4
$

==  Part 2

#homework_box([ 
  Compute $integral_(0)^5 [x] dif x$ where $[x]$ is the largest integer not greater than $x$, therefore, $[x] = k in ZZ$ if and only if $k lt.eq x < k + 1$
])

If $a in ZZ$ st, $[x] = a "then" x in [a, a + 1)$, therefore, the integral can be written as follows:

$
  integral_0^5 [x] 
    &= integral_0^1 [x] dif x + integral_1^2 [x] dif x + integral_2^3 [x] dif x + integral_3^4 [x] dif x + integral_4^5 [x] dif x \ 
    &= integral_0^1 0 dif x + integral_1^2 1 dif x + integral_2^3 2 dif x + integral_3^4 3 dif x + integral_4^5 4 dif x \ 
    &= x bar.v_1^2 + 2 x bar.v_2^3 + 3 x bar.v_3^4 + 4 x bar.v_4^5 \
    &= (2 - 1) + 2(3 - 2) + 3(4 - 3) + 4(5 - 4) \
    &= 1 + 2 + 3 + 4 = 10 \ 
$

#pagebreak()
= Problem 3

#homework_box([
  Solve the following integrals using substitution
])

== Part 1

#homework_box([
  $
    integral_0^2 (e^x)/(sqrt(1 + e^x)) dif x
  $
])

To solve this, let $u = e^x + 1$, then

$
  (dif u) / (dif x) = e^x arrow.r.double.long dif x space e^x = dif u arrow.r.double.long dif x = 1/e^x dif u \

  integral (e^x)/(sqrt(1 + e^x)) dif x &= integral (e^x)/(sqrt(u)) 1/e^x dif u \ 
    &= integral 1/(sqrt(u))dif u = integral u^(-1/2) dif u \
    &= (u^(-1/2 + 1))/(-1/2 + 1) + C \
    &= 2 sqrt(u) + C\
    &= 2 sqrt(e^x + 1) + C
$

Therefore: 

$
  integral_0^2 (e^x)/(sqrt(1 + e^x)) dif x
  & = 2 sqrt(e^2 + 1) - 2 sqrt(e^0 + 1) \
  & = 2 sqrt(e^2 + 1) - 2 sqrt(2)
$

#pagebreak()
== Part 2

#homework_box([
  $
    integral_1^2 (sqrt(1 + sqrt(x)))/(sqrt(x)) dif x
  $
])

Let $u = sqrt(x) + 1$, then 
$ 
  (dif u)/(dif x) = 1/(2sqrt(x)) arrow.r.double.long 2 dif u = 1/sqrt(x) dif x 
$

Therefore

$
  integral (sqrt(1 + sqrt(x)))/(sqrt(x)) dif x 
    &= integral sqrt(u) 1/sqrt(x) dif x \
    &= integral sqrt(u) space 2 dif u \ 
    &= 4 u^(3/2)/3 + C \
    &= 4 (1 + sqrt(x))^(3/2)/3 + C
$

Therefore:
  $
    integral_1^2 (sqrt(1 + sqrt(x)))/(sqrt(x)) dif x 
      &= (4 (1 + sqrt(2))^(3/2)/3 + C) - (4 (1 + sqrt(1))^(3/2)/3 + C) \
      &= 4 ((1 + sqrt(2))^(3/2) - 2^(3/2))/3
  $

#pagebreak()
= Problem 4
#figure(
  image("3-image.jpg", width: 100%),
  caption: [
    Sketch of Graph 1, and of Graph 2
  ],
)

== Part 1

We need to find A. First, let $C = A + B$. We can solve for $C$ as it is the area of 
the triangle with vertices at $(0, 0), (1, 0), (1, 1)$ plus the area of the rectangle with vertices $(1, 0), (2, 0), (1, 1), (2, 1)$. 

$
  C = (1/2 times 1 times 1) + (1 times 1) = 3/2
$

Also, 
$
  B 
    &= integral_0^2 1/4 x^2 \
    &= [1/12 x^3]_0^2 \ 
    &= 8/12 = 4/6 = 2/3
$

$
  C = A + B 
    &arrow.r.double.long A = C - B \
    &arrow.r.double.long A &&= 3/2 - 2/3 \
    &&= 5/6 
$

#pagebreak()
== Part 2

We can shift both of the functions by adding 10. This will make it easier to integrate, and will have the same area. Call the area between the two curves $F$.

$
  F &= 
  (integral_(-2)^(0) 2x^3 - x^2 -5x + 10 dif x - integral_(-2)^(0) - x^2 + 3x + 10 dif x)\
  &+ (integral_0^2 - x^2 + 3x + 10 dif x - integral_0^2 2x^3 - x^2 -5x + 10 dif x) \
  & = ([x^4/2 - x^3/3 -5x^2/2 + 10x]_(-2)^0 - [-1/3x^3 + 3x^2/2 + 10x]_(-2)^0) \
  & + ([-1/3x^3 + 3x^2/2 + 10x]_0^2 - [x^4/2 - x^3/3 -5x^2/2 + 10x]_0^2) \
  & = (58/3 - 34/3) + (70/3 - 46/3) = 16
$

