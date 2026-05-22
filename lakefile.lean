import Lake
open Lake DSL

package proofgarden where
  -- Lake configuration for the judge repo.
  --
  -- Keep this file owned by the platform operator. Users never commit to
  -- this repo by hand; the ProofGarden web app generates files into
  -- `ProofGarden/Challenges/<slug>/Submissions/Submission_<id>.lean` on a
  -- submission branch, and GitHub Actions runs `lake build` to type-check.

@[default_target]
lean_lib ProofGarden where
  -- Build everything under ProofGarden/, including auto-generated
  -- Submission_*.lean files. Add globs as you add challenges.
  roots := #[`ProofGarden]
