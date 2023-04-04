#import "../../preamble.typ" : *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Linear Algebra Class",
  type: "notes"
)

= Eigen values

Take $V$ over $FF$, $lambda in FF$, $T in L(V)$, $lambda$ is an eigenvalue if 
there exists a $v eq.not 0$ such taht 

$
    T v = lambda v = lambda I v \ 
    arrow.r.double.long T v - lambda I v = 0 \ 
    arrow.r.double.long (T - lambda I) v = 0 \ 
    arrow.l.r.double.long v in "ker" (T - lambda I)\ 
$

Therefore, if $lambda$ is an eigenvalue, then 

$
    "ker" (T - lambda I) eq.not {0} \
    arrow.r.l.double.long (T - lambda I) " is not bijective" \
    arrow.r.l.double.long (T - lambda I) " does not have an inverse" \
    "the matrix " A "of" (T - lambda I) " in a chosen basis does not have an inverse"\
    "det"A = 0 \
$

If $A_T$ denotes the matrix of $T$, then $A =$ matrix of $T - lambda I = A_T - lambda mat(1, ..., 0; 0, ..., 0; 0, ..., 1)$ 

Therefore, if $lambda$ is an eigenvalue $arrow.r.l.double.long det(A_T - lambda mat(1, ..., 0; 0, ..., 0; 0, ..., 1)) = 0$. We write 
$E_lambda(T) := ker(T - lambda I)$ and we call it the eigenspace of $T$ with respect to $lambda$.

The *spectrum $sigma(T)$* of $T$ is the set of all eigenvalues of $T$.

*Proposition:* Let $T in L(V)$ and let $lambda$ be an eigenvalue of $T$. Then $E_lambda(T)$ is an invarient\* subspace of $V$.

*Proof*: 

$lambda in sigma(T) arrow.r.double.long exists v eq.not 0, T v = lambda v$, therefore, $(T - lambda I) = 0 arrow.r.double.long v in E_lambda(T)$.
$T v = lambda v in E_lambda(T)$


*Proposition:* Let $T in L(V)$, and $lambda_1, ..., lambda_n$ be distincs eigenvalues of $T$. Then 
$E_lambda_1(T), ..., E_lambda_n(T)$ are linearly independent of each other. 

In other words for any selection of $v_1 in E_lambda_1(T), ..., v_n in E_lambda_n(T)$

*Proof:*

We can prove this by induction, for $k = 1$, there is nothing to prove. 

For $k = 2$, take:

$
    v_1 in E_lambda_1(T) quad v_2 in E_lambda_2(T)
$

suppose that they are linearly dependent, then there exists $alpha_1, alpha_2$ (not both 0) such that:

$
    alpha_1 v_1 + alpha_2 v_2 = 0 arrow.r.double.long alpha_1 v_1 = - alpha_2 v_2 \ 
    T(alpha_1 v_1) = T(- alpha_2 v_2) \
    alpha T(v_1) = - alpha_2 T(v_2) \
    lambda_1 alpha_1 v_1 = - lambda_2 alpha_2 v_2
$

Also

$
    alpha_1 v_1 = - alpha_2 v_2 arrow.r.double.long lambda_1 alpha_1 v_1 = - lambda_1 alpha_2 v_2 \

    - lambda_1 alpha_2 v_2 = - lambda_2 alpha_2 v_2 arrow.r.double.long underbrace((lambda_1 - lambda_2), eq.not 0) alpha_2 underbrace(v_2, eq.not 0) \
    therefore alpha_2 = 0
$

Assume that the conclusion that it is true for $k - 1$:

Suppose that there exists coefficients $alpha_1, ..., alpha_(k - 1)$, and assume that they are linearly dependent:

$
    sum_(j = 1)^(k) alpha_j v_j = 0
$

Wlog $alpha_k eq.not 0$

$
    -alpha_k v_k = sum_(j = 1)^(k - 1) alpha_j v_j \
    T(- alpha_k v_k) = T(sum_(j = 1)^(k - 1) alpha_j v_j) \
    - alpha_k T(v_k) = sum_(j = 1)^(k - 1) alpha_j T(v_j) \
    - alpha_k lambda_k v_k = sum_(j = 1)^(k - 1) alpha_j lambda_j v_j \
$

Multplying both sides by $lambda_k$:

$
    -alpha_k v_k = sum_(j = 1)^(k - 1) alpha_j v_j \
    -alpha_k lambda_k v_k &= sum_(j = 1)^(k - 1) alpha_j lambda_k v_j \
    &= sum_(j = 1)^(k - 1) alpha_j (lambda_k - lambda_j) v_j = 0
$

Therefore, $alpha_j = 0$ for all $j$, and so $- alpha_k v_k = sum_(j = 1)^(k - 1) alpha_j v_j = 0$


== Example

Take $FF = RR$

Take $T in L(RR^2)$ be given by $T(x_1, x_2) = (-x_2, x_1)$. We claim that T has no eigen values.
an eigen value is a $lambda$ such that:

$ 
    T(x_1, x_2) = lambda (x_1, x_2) = (lambda x_1, lambda x_2) \
    -x_2 = lambda x_1, quad x_1 = lambda x_2 \
    arrow.r.double.long x_1 = - lambda^2 x_2
$

however, there exists no lambda in the real such that the above is true. 

== Example 

Take $T in L(CC^2)$ be given by $T(x_1, x_2) = (-x_2, x_1)$, note that this is the same function as in the example above

$

    &cases(
        x_1 = - lambda^2 x_1,
        x_2 = - lambda^2 x_2,
    ) \

    "Take " lambda = plus.minus 1 \ 

    &cases(
        -x_2 = i x_1,
        x_1 = i x_2 
    )\

    x_1 = i x_2 arrow.r.double.long "solution: " vec(i x_2, x_2)
$


