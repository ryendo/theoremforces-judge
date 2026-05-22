# ProofGarden judge repository (template)

This directory is the template for the **public judge repository** that
ProofGarden Lean Judge talks to. Copy it into a fresh GitHub repo, then
configure the web app to point at that repo via the `GITHUB_*` env vars.

Operator responsibilities:

- Protect `main`. Only ProofGarden's GitHub token may push (and only to
  `submission/*` branches).
- Keep `lean-toolchain`, `lakefile.lean`, `lake-manifest.json`, the
  `.github/workflows/check-submission.yml` file, and every
  `Statement.lean` under operator-only control. Users never touch them.
- Set the repo to public so visitors can audit the Lean files that were
  actually compiled.

Adding a new challenge:

1. Create `ProofGarden/Challenges/<slug>/Statement.lean`.
2. Re-export from `ProofGarden.lean` so the default target picks it up.
3. Use the ProofGarden admin UI to register the challenge with matching
   `slug`, `theoremName`, `theoremStatement`, `namespaceName`, and
   `imports`.

The workflow filter (`ProofGarden/Challenges/**/Submissions/Submission_*.lean`)
ensures non-submission files don't trigger CI.
