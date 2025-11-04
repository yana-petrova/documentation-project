# Variables
PANDOC = pandoc
SOURCES = intro.md methods.md results.md math.md references.md
STYLES = style.html style.css
BIBLIOGRAPHY = references.bib

# Targets
all: documentation.pdf documentation.docx documentation.html

# PDF with LaTeX formulas
documentation.pdf: $(SOURCES) $(BIBLIOGRAPHY)
	$(PANDOC) $(SOURCES) --filter pandoc-citeproc --bibliography=$(BIBLIOGRAPHY) \
	--standalone --toc --pdf-engine=xelatex -o documentation.pdf

# DOCX document
documentation.docx: $(SOURCES) $(BIBLIOGRAPHY)
	$(PANDOC) $(SOURCES) --filter pandoc-citeproc --bibliography=$(BIBLIOGRAPHY) \
	--standalone --toc -o documentation.docx

# HTML website with math support
documentation.html: $(SOURCES) $(STYLES) $(BIBLIOGRAPHY)
	$(PANDOC) $(SOURCES) --filter pandoc-citeproc --bibliography=$(BIBLIOGRAPHY) \
	--include-in-header=style.html --standalone --toc --css=style.css \
	--mathjax -o documentation.html

# Individual targets
pdf: documentation.pdf
docx: documentation.docx
html: documentation.html

# Clean build artifacts
clean:
	rm -f documentation.pdf documentation.docx documentation.html

# Help
help:
	@echo "Available targets:"
	@echo "  make all    - Build all formats (PDF, DOCX, HTML)"
	@echo "  make pdf    - Build PDF only"
	@echo "  make docx   - Build DOCX only"
	@echo "  make html   - Build HTML website only"
	@echo "  make clean  - Remove generated files"
	@echo "  make help   - Show this help"

.PHONY: all pdf docx html clean help