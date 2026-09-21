/-
  Erdős Problem 876 / JSP-000876
  Can several consecutive integer intervals each have product
  congruent to one modulo the same prime?

  Answer: YES.

  Witness: prime p = 5.
  Two disjoint intervals [2,3] and [7,8], each of length 2.
  Products: 2×3 = 6 ≡ 1 (mod 5), 7×8 = 56 ≡ 1 (mod 5).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos876

/--
  Main theorem: Several consecutive-integer intervals can each have
  product congruent to one modulo the same prime.

  Witness: p=5, intervals [2,3] and [7,8].
  2×3 = 6 ≡ 1 (mod 5), 7×8 = 56 ≡ 1 (mod 5).
-/
theorem erdos_876 :
    ∃ (p a1 a2 : Nat),
    2 ≤ p ∧
    a1 + 1 < a2 ∧
    a1 * (a1 + 1) % p = 1 ∧
    a2 * (a2 + 1) % p = 1 := by
  refine ⟨5, 2, 7, ?_, ?_, ?_, ?_⟩
  · decide  -- 2 ≤ 5
  · decide  -- 3 < 7
  · decide  -- 2 * 3 % 5 = 6 % 5 = 1
  · decide  -- 7 * 8 % 5 = 56 % 5 = 1

end Erdos876
