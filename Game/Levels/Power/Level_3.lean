import Game.Levels.Power.Level_2


World "Power"
Level 3
Title "pow_one"

open MyNat

/-- For all naturals $a$, $a ^ 1 = a$. -/
Statement MyNat.pow_one
    (a : ℕ) : a ^ 1 = a  := by
  rw [one_eq_succ_zero]
  rw [pow_succ]
  rw [pow_zero]
  rw [one_mul]
  rfl

LemmaTab "Pow"
