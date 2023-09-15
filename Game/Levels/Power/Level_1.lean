import Game.Levels.Multiplication
import Game.MyNat.Power


World "Power"
Level 1
Title "zero_pow_zero"

open MyNat

/-- $0 ^ 0 = 1$ -/
Statement MyNat.zero_pow_zero
    : (0 : ℕ) ^ 0  = 1 := by
  rw [pow_zero]
  rfl

NewLemma MyNat.pow_zero
NewDefinition Pow
LemmaTab "Pow"
