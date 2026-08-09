# TheoremForces judge repository (issuance paused)

This repository preserves the historical Lean environment and public evidence
for TheoremForces. The legacy GitHub Actions judge is permanently retired:
`.github/workflows/check-submission.yml` rejects every stale submission branch
fail-closed, and must not be treated as an acceptance authority.

Public L1 issuance remains paused until every v0.3 Gate C requirement is
implemented and independently approved. Do not copy this repository or set
`GITHUB_*` variables to create a production judge.

Historical-environment responsibilities:

- Protect `main`; no service token may create submission branches.
- Keep `lean-toolchain`, `lakefile.lean`, `lake-manifest.json`, the
  `.github/workflows/check-submission.yml` file, and every
  `Statement.lean` under operator-only control. Users never touch them.
- Keep the repository public so visitors can audit historical Lean sources and
  the current trust specifications.

Maintaining historical challenge sources:

1. Create `Leanforces/Challenges/<slug>/Statement.lean`.
2. Re-export from `Leanforces.lean` so the default target picks it up.
3. Use the TheoremForces admin UI to register the challenge with matching
   `slug`, `theoremName`, `theoremStatement`, `namespaceName`, and
   `imports`.

This maintenance process does not issue certificates. New acceptance must use
the independent-checker v0.3 pipeline after Gate C is released.

## White paper

The detailed TheoremForces white paper describes the trust model, judge and
certificate architecture, threat model, governance, operating targets, and a
12-month implementation roadmap.

- [LaTeX source](docs/whitepaper/theoremforces-whitepaper.tex)
- [Compiled v0.3 white paper](output/pdf/theoremforces-whitepaper-ver-0.3.pdf)
- [Compiled v0.3 L1 white paper](output/pdf/theoremforces-l1-whitepaper-ver-0.3.pdf)
- [Build instructions](docs/whitepaper/README.md)

Superseded PDFs are kept under `output/pdf/archive/` for provenance only and
are not current specifications.
