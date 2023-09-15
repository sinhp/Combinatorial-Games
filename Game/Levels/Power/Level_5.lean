import Game.Levels.Power.Level_4



World "Power"
Level 5
Title "pow_add"

open MyNat

/-- For all naturals $a$, $m$, $n$, we have $a^{m + n} = a ^ m  a ^ n$. -/
Statement MyNat.pow_add
    (a m n : ℕ) : a ^ (m + n) = a ^ m * a ^ n := by
  induction n with t ht
  · rw [add_zero, pow_zero, mul_one]
    rfl
  · rw [add_succ, pow_succ, pow_succ, ht, mul_assoc]
    rfl

LemmaTab "Pow"
