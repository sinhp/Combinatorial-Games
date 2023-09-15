import Game.Levels.AdvAddition.Level_6


World "AdvAddition"
Level 7
Title "add_right_cancel_iff"

open MyNat

Introduction
"
It's sometimes convenient to have the \"if and only if\" version
of theorems like `add_right_cancel`. Remember that you can use `constructor`
to split an `↔` goal into the `→` goal and the `←` goal.
"

/-- For all naturals $a$, $b$ and $t$,
$$ a + t = b + t\\iff a=b. $$
 -/
Statement MyNat.add_right_cancel_iff
    (t a b : ℕ) :  a + t = b + t ↔ a = b := by
  Branch
    induction t
    · simp
    · simp
      exact n_ih
  constructor
  · Hint "Pro tip: `exact add_right_cancel _ _ _` means \"let Lean figure out the missing inputs\"."
    exact add_right_cancel _ _ _
  · intro H
    rw [H]
    rfl

LemmaTab "Add"
DisabledTactic simp
