#!/bin/bash

# Resume compilation script with multiple options
# This script provides different ways to compile and preview the resume

set -e  # Exit on any error

RESUME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RESUME_FILE="resume.tex"
PDF_FILE="resume.pdf"

echo "🔄 Resume Compilation Options"
echo "=============================="
echo ""

# Check if XeLaTeX is available
if command -v xelatex &> /dev/null; then
    echo "✅ XeLaTeX found - using local compilation"
    echo "📝 Compiling resume locally..."
    cd "$RESUME_DIR"
    
    # Compile with XeLaTeX
    xelatex -interaction=nonstopmode "$RESUME_FILE"
    
    # Run biber for bibliography if available
    if command -v biber &> /dev/null; then
        echo "📚 Processing bibliography..."
        biber resume
        xelatex -interaction=nonstopmode "$RESUME_FILE"
    fi
    
    # Final compilation
    xelatex -interaction=nonstopmode "$RESUME_FILE"
    
    if [ -f "$PDF_FILE" ]; then
        echo "✅ Resume compiled successfully!"
        echo "📄 Opening PDF preview..."
        
        if command -v open &> /dev/null; then
            open "$PDF_FILE"
        elif command -v xdg-open &> /dev/null; then
            xdg-open "$PDF_FILE"
        else
            echo "📄 PDF generated: $RESUME_DIR/$PDF_FILE"
        fi
    else
        echo "❌ Error: PDF was not generated"
        exit 1
    fi
    
else
    echo "❌ XeLaTeX not found"
    echo ""
    echo "📋 Options to compile your resume:"
    echo ""
    echo "1. 🖥️  Install LaTeX locally:"
    echo "   brew install --cask basictex"
    echo "   # Then restart terminal and run: eval \"\$(/usr/libexec/path_helper)\""
    echo ""
    echo "2. 🌐 Use online LaTeX compiler:"
    echo "   - Go to https://www.overleaf.com/"
    echo "   - Create a new project"
    echo "   - Upload your resume.tex and papers.bib files"
    echo "   - Compile online"
    echo ""
    echo "3. 📁 Manual compilation:"
    echo "   - Copy all files to a LaTeX environment"
    echo "   - Run: xelatex resume.tex"
    echo "   - Run: biber resume"
    echo "   - Run: xelatex resume.tex (twice)"
    echo ""
    echo "4. 🔧 Alternative: Use pdflatex (may require font changes):"
    echo "   - Comment out fontspec lines in resume.tex"
    echo "   - Use pdflatex instead of xelatex"
    echo ""
    
    # Create a simple HTML preview of the LaTeX source
    echo "📄 Creating HTML preview of LaTeX source..."
    if command -v pandoc &> /dev/null; then
        pandoc "$RESUME_FILE" -o "${RESUME_FILE%.tex}.html" --standalone
        echo "✅ HTML preview created: ${RESUME_FILE%.tex}.html"
        if command -v open &> /dev/null; then
            open "${RESUME_FILE%.tex}.html"
        fi
    else
        echo "📝 LaTeX source file: $RESUME_DIR/$RESUME_FILE"
        echo "📚 Bibliography file: $RESUME_DIR/papers.bib"
    fi
fi

echo ""
echo "🎉 Resume workflow ready!"