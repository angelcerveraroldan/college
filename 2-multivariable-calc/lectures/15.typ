#import "../../preamble.typ" : *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Multivariable Calculus",
  type: "notes"
)

#defbox([
    Suppose that $f$ is integrable over a region $T$ in the xy plane, ad suppose $f(x, y) gt.eq 0$ for al $(x, y) in T$. Then the volume of the solid lying above $T$ and below the surface $z = f(x, y)$ is given by

    $
        V = integral_T integral f(x, y) dif A
    $
])

#thmbox(title: "Properties of double integrals", [
    Supose that $f, g$ are continuous functions on a closed bounded region $T$ in the $x y$ plane and suppose that $k$ is a constant.
])

$
    integral_T integral k f(x, y) dif A = k integral_t integral f(x, y) dif A \ 
    integral_T integral (f(x, y) + g(x, y)) dif A = integral_T integral f(x, y) dif A + integral_T integral g(x, y) dif A \
    integral_T integral f(x, y) gt.eq 0 "if" f(x, y) gt.eq 0 \ 
    integral_T integral f(x, y) dif A = integral_T_1 integral f(x, y) dif A + integral_T_2 integral f(x, y) dif A
$

where $T = T_1 union T_2$, and $T_1, T_2$ are disjoint sets.

#thmbox(title:"Fubini's Theorem", [
    Suppose that $f$ is a continuous function on a region $T$ in the $x y$ plane, then:

    $T = {(x, y) in RR^2 | a lt.eq x lt.eq b, space g_1(x) lt.eq y lt.eq g_2(x)}$ where $g_1, g_2$ are continuous on $[a, b]$ 
    
    $ 
        arrow.r.double.long integral_T_1 integral f(x, y) dif A = integral_(a)^(b) integral_(g_1(x))^(g_2(x)) f(x, y) dif y dif x 
    $ 


        $T = {(x, y) in RR^2 | c lt.eq y lt.eq d, space h_1(y) lt.eq x lt.eq h_2(y)}$ where $h_1, h_2$ are continuous on $[c, d]$ 
    
    $ 
        arrow.r.double.long integral_T_1 integral f(x, y) dif A = integral_(c)^(d) integral_(h_1(y))^(h_2(y)) f(x, y) dif x dif y 
    $ 
])

The two integrals (RHS) above are called itrated integrals. Fubini's theorem says that if $T$ is horizontally simple ($a <= x <= b$), then the double integral in the first part can be calculated by performing two single integrals one after the other.


#pagebreak()
== Example

Find the volume of the solid lying below $z = 4 - x - y$ and above the square $T$ given by $0 <= x <= 1$ and $1 <= y <= 2$. 

By definition, the volume ($V$) is given by:

$
    V &= integral_T integral 4 - x- y dif A \ 
$

the function is both horizontally and vertically simple, so we can use the first or second part of Fubini's Theorem

$
    V 
    &= integral_(x = 0)^(1) integral_(y = 1)^(2) 4 - x- y dif y dif x \ 
    &= integral_(x = 0)^(1) [4y - x y - y^2/2]_(1)^(2) dif x \ 
    & = integral_(x = 0)^(1) [4(2) - x (2) - (2)^2/2] - [4(1) - x (1) - (1)^2/2] dif x \
    & = integral_(x = 0)^(1) 5/2 -x dif x  \
    & = [(5x)/2 - x^2/2]_0^1 = 2
$

== Example

Find $integral_T integral x y dif A$ where $T$ is the triangle with vertices $(0, 0), (1, 0), (1, 1)$. 

We can write the set of points in T as $T = {(x, y) | 0 <= x <= 1, 0 <= y <= x}$, this set is horizontally simple, and so we can use Fubini's theorem part 1

$
    integral_T integral x y dif A 
    & = integral_(x = 0)^1 integral_(y = 0)^x x y dif y dif x \ 
    & = integral_0^1 [(x y^2)/2]_0^x dif x \
    & = integral_0^1 x^3/2 dif x \
    & = [x^4/8]_0^1 = 1/8
$

We could have also defined $T$ to be vertically simple, by letting $T = {(x, y) | y <= x <= 1, 0 <= y <= 1}$, in which case we would have had to solve

$
    integral_T integral x y dif A = integral_(y = 0)^1 integral_(x = y)^1 x y dif x dif y 
$

== Example
 
Find $integral_T integral 5y dif A$ where $T$ is the region on the $x y$ plane bounded by the curves $y = x^2 - 3$ and $y = -2x$. 

First we will find the points of intersection of the curves $x^2 - 3$ and $-2x$


Answer: $$