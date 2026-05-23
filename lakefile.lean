import Lake
open Lake DSL

-- Pin Mathlib to the same Lean version as our toolchain (v4.13.0).
-- We use the matching git tag so `lake exe cache get` finds pre-built oleans
-- and CI doesn't have to compile Mathlib from source.
require "leanprover-community" / "mathlib" @ git "v4.13.0"

package leanforces where
  -- Lake configuration for the judge repo. Operator-owned.
  --
  -- The web app never commits to this repo by hand. It pushes auto-generated
  -- files into `Theoremforces/Challenges/<slug>/Submissions/Submission_<id>.lean`
  -- on a `submission/<id>` branch. GitHub Actions then does a TARGETED
  -- `lake build <Module>` so we don't recompile every submission on every run.
  leanOptions := #[
    ⟨`autoImplicit, false⟩,
    ⟨`pp.unicode.fun, true⟩
  ]

@[default_target]
lean_lib Theoremforces where
  -- Build everything under Theoremforces/, including auto-generated
  -- Submission_*.lean files. Per-file targeted builds happen in CI.
  roots := #[`Theoremforces]
