# TheoremForces L1 white paper

This directory contains the standalone LaTeX source for the L1 (kernel acceptance) white paper.

Build from the repository root:

```bash
make -C docs/whitepaper/l1
```

Requirements:

- LuaLaTeX
- `latexmk`
- `luatexja` with the Harano Aji fonts (included in TeX Live)

The final artifact is written to:

```text
output/pdf/theoremforces-l1-whitepaper-ver-0.3.pdf
```

Temporary LaTeX files are written under `tmp/pdfs/theoremforces-l1-whitepaper/`.
