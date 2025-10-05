# Makefile for resume compilation
# Usage: make resume, make clean, make help

RESUME = resume
TEX_FILE = $(RESUME).tex
PDF_FILE = $(RESUME).pdf
BIB_FILE = papers.bib

# Default target
all: resume

# Compile resume with XeLaTeX
resume: $(PDF_FILE)

$(PDF_FILE): $(TEX_FILE) $(BIB_FILE)
	@echo "🔄 Compiling resume..."
	@if command -v xelatex >/dev/null 2>&1; then \
		echo "📝 Using XeLaTeX..."; \
		xelatex -interaction=nonstopmode $(TEX_FILE); \
		if command -v biber >/dev/null 2>&1; then \
			echo "📚 Processing bibliography..."; \
			biber $(RESUME); \
			xelatex -interaction=nonstopmode $(TEX_FILE); \
		fi; \
		xelatex -interaction=nonstopmode $(TEX_FILE); \
		echo "✅ Resume compiled successfully!"; \
	else \
		echo "❌ XeLaTeX not found. Please install LaTeX or use online compiler."; \
		echo "   Install with: brew install --cask basictex"; \
		exit 1; \
	fi

# Clean auxiliary files
clean:
	@echo "🧹 Cleaning auxiliary files..."
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.fls *.fdb_latexmk *.synctex.gz

# Clean everything including PDF
distclean: clean
	@echo "🧹 Cleaning PDF..."
	rm -f $(PDF_FILE)

# Open PDF
open: $(PDF_FILE)
	@echo "📄 Opening PDF..."
	@if command -v open >/dev/null 2>&1; then \
		open $(PDF_FILE); \
	elif command -v xdg-open >/dev/null 2>&1; then \
		xdg-open $(PDF_FILE); \
	else \
		echo "📄 PDF generated: $(PDF_FILE)"; \
	fi

# Show help
help:
	@echo "📋 Available targets:"
	@echo "  resume    - Compile the resume (default)"
	@echo "  open      - Compile and open PDF"
	@echo "  clean     - Remove auxiliary files"
	@echo "  distclean - Remove all generated files"
	@echo "  help      - Show this help message"
	@echo ""
	@echo "📝 Usage examples:"
	@echo "  make resume    # Compile resume"
	@echo "  make open      # Compile and open"
	@echo "  make clean     # Clean up"

.PHONY: all resume clean distclean open help
