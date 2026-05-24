-- AUTO-GENERATED challenge validation by TheoremForces.
-- Challenge: imo-2023-problem-6  (id cmpkavnvc0001qe1u5oxgvsgo)
-- Purpose: type-check only — provability not required here.

import Mathlib

namespace Theoremforces.Challenges.User.U_imo_2023_problem_6.Validations.Validation_cmpkavnvc0001qe1u5oxgvsgo

/-- Stub: confirms `∀ (A1 B1 C1 A2 B2 C2 : ℂ),
  let A : ℂ := 0;
  let B : ℂ := 1;
  let C : ℂ := Complex.mk (1 / 2) (Real.sqrt 3 / 2);
  let cross : ℂ → ℂ → ℝ :=
    fun u v => u.re * v.im - u.im * v.re;
  let collinear : ℂ → ℂ → ℂ → Prop :=
    fun P Q R => cross (Q - P) (R - P) = 0;
  let insideTri : ℂ → Prop :=
    fun P =>
      ∃ α β γ : ℝ,
        0 < α ∧ 0 < β ∧ 0 < γ ∧
        α + β + γ = 1 ∧
        P = ((α : ℂ) * A + (β : ℂ) * B + (γ : ℂ) * C);
  let angle : ℂ → ℂ → ℂ → ℝ :=
    fun P Q R =>
      Real.arccos
        ((((Q - P).re * (R - P).re + (Q - P).im * (R - P).im)) /
          (Real.sqrt (Complex.normSq (Q - P)) *
            Real.sqrt (Complex.normSq (R - P))));
  let lineInter : ℂ → ℂ → ℂ → ℂ → ℂ → Prop :=
    fun X P Q R S => collinear P Q X ∧ collinear R S X;
  let scalene : ℂ → ℂ → ℂ → Prop :=
    fun P Q R =>
      Complex.normSq (P - Q) ≠ Complex.normSq (Q - R) ∧
      Complex.normSq (Q - R) ≠ Complex.normSq (R - P) ∧
      Complex.normSq (R - P) ≠ Complex.normSq (P - Q);
  let concyclic : ℂ → ℂ → ℂ → ℂ → Prop :=
    fun P Q R X =>
      ∃ O : ℂ,
        Complex.normSq (P - O) = Complex.normSq (Q - O) ∧
        Complex.normSq (Q - O) = Complex.normSq (R - O) ∧
        Complex.normSq (R - O) = Complex.normSq (X - O);
  insideTri A1 ∧ insideTri B1 ∧ insideTri C1 →
  Complex.normSq (B - A1) = Complex.normSq (A1 - C) →
  Complex.normSq (C - B1) = Complex.normSq (B1 - A) →
  Complex.normSq (A - C1) = Complex.normSq (C1 - B) →
  angle A1 B C + angle B1 C A + angle C1 A B = (8 * Real.pi) / 3 →
  lineInter A2 B C1 C B1 →
  lineInter B2 C A1 A C1 →
  lineInter C2 A B1 B A1 →
  scalene A1 B1 C1 →
  ∃ X Y : ℂ,
    X ≠ Y ∧
    concyclic A A1 A2 X ∧
    concyclic B B1 B2 X ∧
    concyclic C C1 C2 X ∧
    concyclic A A1 A2 Y ∧
    concyclic B B1 B2 Y ∧
    concyclic C C1 C2 Y` is a well-formed
    proposition. `sorry` is fine here — we are validating
    the challenge SHAPE, not the proof. -/
def answer : ∀ (A1 B1 C1 A2 B2 C2 : ℂ),
  let A : ℂ := 0;
  let B : ℂ := 1;
  let C : ℂ := Complex.mk (1 / 2) (Real.sqrt 3 / 2);
  let cross : ℂ → ℂ → ℝ :=
    fun u v => u.re * v.im - u.im * v.re;
  let collinear : ℂ → ℂ → ℂ → Prop :=
    fun P Q R => cross (Q - P) (R - P) = 0;
  let insideTri : ℂ → Prop :=
    fun P =>
      ∃ α β γ : ℝ,
        0 < α ∧ 0 < β ∧ 0 < γ ∧
        α + β + γ = 1 ∧
        P = ((α : ℂ) * A + (β : ℂ) * B + (γ : ℂ) * C);
  let angle : ℂ → ℂ → ℂ → ℝ :=
    fun P Q R =>
      Real.arccos
        ((((Q - P).re * (R - P).re + (Q - P).im * (R - P).im)) /
          (Real.sqrt (Complex.normSq (Q - P)) *
            Real.sqrt (Complex.normSq (R - P))));
  let lineInter : ℂ → ℂ → ℂ → ℂ → ℂ → Prop :=
    fun X P Q R S => collinear P Q X ∧ collinear R S X;
  let scalene : ℂ → ℂ → ℂ → Prop :=
    fun P Q R =>
      Complex.normSq (P - Q) ≠ Complex.normSq (Q - R) ∧
      Complex.normSq (Q - R) ≠ Complex.normSq (R - P) ∧
      Complex.normSq (R - P) ≠ Complex.normSq (P - Q);
  let concyclic : ℂ → ℂ → ℂ → ℂ → Prop :=
    fun P Q R X =>
      ∃ O : ℂ,
        Complex.normSq (P - O) = Complex.normSq (Q - O) ∧
        Complex.normSq (Q - O) = Complex.normSq (R - O) ∧
        Complex.normSq (R - O) = Complex.normSq (X - O);
  insideTri A1 ∧ insideTri B1 ∧ insideTri C1 →
  Complex.normSq (B - A1) = Complex.normSq (A1 - C) →
  Complex.normSq (C - B1) = Complex.normSq (B1 - A) →
  Complex.normSq (A - C1) = Complex.normSq (C1 - B) →
  angle A1 B C + angle B1 C A + angle C1 A B = (8 * Real.pi) / 3 →
  lineInter A2 B C1 C B1 →
  lineInter B2 C A1 A C1 →
  lineInter C2 A B1 B A1 →
  scalene A1 B1 C1 →
  ∃ X Y : ℂ,
    X ≠ Y ∧
    concyclic A A1 A2 X ∧
    concyclic B B1 B2 X ∧
    concyclic C C1 C2 X ∧
    concyclic A A1 A2 Y ∧
    concyclic B B1 B2 Y ∧
    concyclic C C1 C2 Y := by sorry

end Theoremforces.Challenges.User.U_imo_2023_problem_6.Validations.Validation_cmpkavnvc0001qe1u5oxgvsgo
