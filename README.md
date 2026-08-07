# Leanforces judge repository (template)

This directory is the template for the **public judge repository** that
Leanforces talks to. Copy it into a fresh GitHub repo, then
configure the web app to point at that repo via the `GITHUB_*` env vars.

Operator responsibilities:

- Protect `main`. Only Leanforces's GitHub token may push (and only to
  `submission/*` branches).
- Keep `lean-toolchain`, `lakefile.lean`, `lake-manifest.json`, the
  `.github/workflows/check-submission.yml` file, and every
  `Statement.lean` under operator-only control. Users never touch them.
- Set the repo to public so visitors can audit the Lean files that were
  actually compiled.

Adding a new challenge:

1. Create `Leanforces/Challenges/<slug>/Statement.lean`.
2. Re-export from `Leanforces.lean` so the default target picks it up.
3. Use the Leanforces admin UI to register the challenge with matching
   `slug`, `theoremName`, `theoremStatement`, `namespaceName`, and
   `imports`.

The workflow filter (`Leanforces/Challenges/**/Submissions/Submission_*.lean`)
ensures non-submission files don't trigger CI.

## White paper

The detailed TheoremForces white paper describes the trust model, judge and
certificate architecture, threat model, governance, operating targets, and a
12-month implementation roadmap.

- [LaTeX source](docs/whitepaper/theoremforces-whitepaper.tex)
- [Compiled PDF](output/pdf/theoremforces-whitepaper.pdf)
- [Build instructions](docs/whitepaper/README.md)
