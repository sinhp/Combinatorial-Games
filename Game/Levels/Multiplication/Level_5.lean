import Game.Levels.Multiplication.Level_4


World "Multiplication"
Level 5
Title "mul_assoc"

open MyNat

Introduction
"
We now have enough to prove that multiplication is associative.

## Random tactic hint

You can do `repeat rw [mul_succ]` to repeat a tactic as often as possible.

"

/-- Multiplication is associative.
In other words, for all natural numbers $a$, $b$ and $c$, we have
$(ab)c = a(bc)$. -/
Statement MyNat.mul_assoc
    (a b c : ℕ) : (a * b) * c = a * (b * c)  := by
  induction c with d hd
  · repeat rw [mul_zero]
    rfl
  · rw [mul_succ]
    rw [mul_succ]
    rw [hd]
    rw [mul_add]
    rfl

NewTactic «repeat»
LemmaTab "Mul"

-- TODO: old version introduced `rwa` here, but it would need to be modified
-- as our `rw` does not call `rfl` at the end.
