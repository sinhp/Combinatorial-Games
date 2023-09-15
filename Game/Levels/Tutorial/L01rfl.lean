import Game.Metadata
import Game.MyNat.Multiplication


World "Tutorial"
Level 1
Title "The rfl tactic"

DefinitionDoc MyNat as "ℕ"
"
The natural numbers, defined as an inductive type, with two constructors:

* `0 : ℕ`
* `succ (n : ℕ) : ℕ`

## Game Implementation

*The game uses its own copy of the natural numbers, called `MyNat` or `ℕ`.
If you ever see `Nat`, then you probably need to use `(1 : ℕ)` instead of `1` somewhere to tell Lean
to work in `MyNat`.*
"

NewDefinition MyNat

TacticDoc rfl
"
## Summary

`rfl` proves goals of the form `X = X`.

## Details

The `rfl` tactic will close any goal of the form `A = B` if `A` and `B` are
*identical*.

## Example:

If the goal looks like this:

```
x ^ 37 + 69 * y + 1 = x ^ 37 + 69 * y + 1
```

then `rfl` will close it. But if it looks like `0 + x = x` then `rfl` won't work, because even
though $0+x$ is *equal* to $x$, it is not *exactly the same thing* as *x*. The only thing which is
exactly the same as `0 + x` is `0 + x`.

## Game Implementation

*Note that our `rfl` is weaker than the version used in core Lean and `mathlib`,
for pedagogical purposes; mathematicians do not distinguish between propositional
and definitional equality because they think about definitions in a different way
to type theorists (`zero_add` and `add_zero` are both axioms as far
as mathematicians are concerned).*
"

NewTactic rfl

Introduction
"
Each level in this game involves proving a mathematical theorem (the \"Goal\").
In this first level we're going to learn how to prove the theorem that $37x + q = 37x + q$.
Here $x$ and $q$ are secret numbers, a.k.a variables (you can see them listed
under \"Objects\") and $37$ is a non-secret number.

We prove theorems in Lean using *Tactics*, and the first tactic we're
going to learn is called `rfl`, which is short for \"reflexivity of equality\",
an intimidating way of explaining that it proves all theorems of the form $X = X$.

Prove that $37x+q=37x+q$ by casting the `rfl` tactic.
"

/-- If $x$ and $q$ are arbitrary natural numbers, then $37x+q=37x+q.$ -/
Statement
    (x q : ℕ) : 37 * x + q = 37 * x + q := by
  Hint "In order to use the tactic `rfl` you can enter it in the text box
  under the goal and hit \"Execute\"."
  rfl



Conclusion
"
Congratulations! You completed your first verified proof!

Remember that `rfl` is a *tactic*. If you ever want information about the `rfl` tactic,
just click on the `rfl` box in the inventory on the right. **TODO** make more precise.

Now click on \"Next\" to continue the journey.
"
