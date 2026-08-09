# TheoremForces white paper

This directory contains the LaTeX source for the Japanese/English TheoremForces white paper.

Build from the repository root:

```bash
make -C docs/whitepaper
```

Requirements:

- LuaLaTeX
- `latexmk`
- `luatexja` with the Harano Aji fonts (included in TeX Live)

The final artifact is written to:

```text
output/pdf/theoremforces-whitepaper-ver-0.3.pdf
```

Temporary LaTeX files are written under `tmp/pdfs/`.

`SHA256SUMS` pins both sources, both build recipes, and both published v0.3
artifacts. Update it only after rebuilding and visually reviewing every page.
