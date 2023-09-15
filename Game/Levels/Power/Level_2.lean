import Game.Levels.Power.Level_1


World "Power"
Level 2
Title "zero_pow_succ"

open MyNat

/-- For all naturals $m$, $0 ^{\\operatorname{succ} (m)} = 0$. -/
Statement MyNat.zero_pow_succ
    (m : ℕ) : (0 : ℕ) ^ (succ m) = 0 := by
  rw [pow_succ]
  rw [mul_zero]
  rfl

NewLemma MyNat.pow_succ
LemmaTab "Pow"
