import Game.Metadata
import Game.MyNat.Addition
import Game.Levels.Tutorial.L05add_succ
World "Tutorial"
Level 6
Title "2+1=3"

open MyNat

Introduction
" First you need to face the sub-boss `2 + 1 = 3`.
"
namespace MyNat

/-- $2+2=4$. -/
Statement two_add_one_eq_three : (2 : ℕ) + 1 = 3 := by
  Hint (hidden := true) "`rw [one_eq_succ_zero]` unlocks `add_succ` but `succ_eq_add_one` is even more useful"
  rw [three_eq_succ_two]
  rw [succ_eq_add_one]
  rfl

LemmaDoc MyNat.two_add_one_eq_three as "two_add_one_eq_three" in "Add"
"`two_add_one` is the proof of `2 + 1 = 3`."

NewLemma MyNat.two_add_one_eq_three
LemmaTab "Add"


Conclusion
" Did you spot the two-rewrite proof? `rw [three_eq_succ_two, succ_eq_add_one]`
and then `rfl`?

  Do you think you're ready for `2 + 2 = 4`?
"
