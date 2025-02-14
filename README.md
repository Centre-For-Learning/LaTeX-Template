# LaTeX Template

A LaTeX template for large documents.

## Commands

To compile the document run `make all` or just `make`. This will generate a `main.pdf` document. To compile individual chapters, run `make ch:chapter-name` where `chapter-name` is the name of a directory under `chapters/`. To compile the title page or abstract individually, run `make page:title` or `make page:abstract`.

To clean any compiled PDFs and auxiliary files run `make clean`.

## Organisation

The main document organisation is as follows:

```
├── chapters/
│   ├── abstract.tex
│   ├── title.tex
│   └── my-first-chapter/
│       ├── assets/
│       └── main.tex
├── main.tex
├── Makefile
└── references.bib
```

Each chapter is a directory under `chapters/` containing, minimally, its own `main.tex` and graphics directory. Each chapter's `main` file is loaded as a subfile in the root `main.tex`.
