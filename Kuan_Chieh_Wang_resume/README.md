# Resume Compilation Workflow

This directory contains the LaTeX source files for Kuan-Chieh Wang's resume.

## Quick Start

### Option 1: Local Compilation (Recommended)
```bash
# Install LaTeX (requires sudo password)
brew install --cask basictex

# Restart terminal or run:
eval "$(/usr/libexec/path_helper)"

# Compile resume
./compile_resume.sh
# or
make resume
```

### Option 2: Online Compilation
1. Go to [Overleaf](https://www.overleaf.com/)
2. Create a new project
3. Upload `resume.tex` and `papers.bib`
4. Compile online

### Option 3: Make Commands
```bash
make resume    # Compile resume
make open      # Compile and open PDF
make clean     # Clean auxiliary files
make help      # Show all options
```

## Files

- `resume.tex` - Main LaTeX source file
- `papers.bib` - Bibliography database
- `headshot.jpg` - Profile photo
- `compile_resume.sh` - Compilation script
- `Makefile` - Make targets for compilation

## Requirements

- **XeLaTeX** (recommended) or pdflatex
- **biber** for bibliography processing
- **Times New Roman** font (or modify font settings)

## Notes

- The resume uses XeLaTeX for font support
- Bibliography is processed with biber
- Multiple compilation passes are required for proper cross-references

## Troubleshooting

### XeLaTeX not found
```bash
# Install BasicTeX
brew install --cask basictex
eval "$(/usr/libexec/path_helper)"
```

### Font issues
- Ensure Times New Roman is installed
- Or modify `\setmainfont{Times New Roman}` in resume.tex

### Bibliography not updating
- Run `biber resume` after first XeLaTeX pass
- Run XeLaTeX twice after biber

## Workflow for Resume Updates

1. Edit `resume.tex` or `papers.bib`
2. Run `./compile_resume.sh` or `make resume`
3. Preview PDF
4. Repeat as needed
