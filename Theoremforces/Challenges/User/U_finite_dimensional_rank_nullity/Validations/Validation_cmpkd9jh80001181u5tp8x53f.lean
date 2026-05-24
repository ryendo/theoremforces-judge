-- AUTO-GENERATED challenge validation by TheoremForces.
-- Challenge: finite-dimensional-rank-nullity  (id cmpkd9jh80001181u5tp8x53f)
-- Purpose: type-check only — provability not required here.

import Mathlib

namespace Theoremforces.Challenges.User.U_finite_dimensional_rank_nullity.Validations.Validation_cmpkd9jh80001181u5tp8x53f

/-- Stub: confirms `∀ {K V W : Type*} [DivisionRing K] [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W] [FiniteDimensional K V] (f : V →ₗ[K] W), Module.finrank K f.range + Module.finrank K f.ker = Module.finrank K V` is a well-formed
    proposition. `sorry` is fine here — we are validating
    the challenge SHAPE, not the proof. -/
def answer : ∀ {K V W : Type*} [DivisionRing K] [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W] [FiniteDimensional K V] (f : V →ₗ[K] W), Module.finrank K f.range + Module.finrank K f.ker = Module.finrank K V := by sorry

end Theoremforces.Challenges.User.U_finite_dimensional_rank_nullity.Validations.Validation_cmpkd9jh80001181u5tp8x53f
