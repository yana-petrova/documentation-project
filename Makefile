# Makefile for documentation building

# Variables
SOURCES = intro.md methods.md results.md math.md references.md
HTML_FILE = documentation.html
DOCX_FILE = documentation.docx
BIBLIOGRAPHY = references.bib
CSL = gost-custom.csl

# Pandoc main settings
PANDOC_COMMON_FLAGS = --citeproc --bibliography=$(BIBLIOGRAPHY) --csl=$(CSL) --standalone --toc
PANDOC_HTML_FLAGS = $(PANDOC_COMMON_FLAGS) --mathjax --include-in-header=style.html
PANDOC_DOCX_FLAGS = $(PANDOC_COMMON_FLAGS)

# Default goals
.DEFAULT_GOAL := all

# File goals
.PHONY: all html docx clean clean-html clean-docx help

# Build all documents
all: html docx

# Build HTML document
html: $(HTML_FILE)

$(HTML_FILE): $(SOURCES)
	@pandoc $(SOURCES) $(PANDOC_HTML_FLAGS) -o "$(HTML_FILE)"
	@echo "$(HTML_FILE) created"

# Build DOCX document
docx: $(DOCX_FILE)

$(DOCX_FILE): $(SOURCES)
	@pandoc $(SOURCES) $(PANDOC_DOCX_FLAGS) -o "$(DOCX_FILE)"
	@echo "$(DOCX_FILE) created"

# Clean all files
clean: clean-html clean-docx

# Clean only HTML
clean-html:
	@if exist "$(HTML_FILE)" ( \
		del "$(HTML_FILE)" && echo "$(HTML_FILE) deleted" \
	) else ( \
		echo "$(HTML_FILE) does not exist" \
	)

# Clean only DOCX 
clean-docx:
	@if exist "$(DOCX_FILE)" ( \
		del "$(DOCX_FILE)" && echo "$(DOCX_FILE) deleted" \
	) else ( \
		echo "$(DOCX_FILE) does not exist" \
	)

# Help
help:
	@echo Available commands:
	@echo   make all           - build all documents (HTML and DOCX)
	@echo   make html          - build only HTML document
	@echo   make docx          - build only DOCX document
	@echo   make clean         - delete all generated files
	@echo   make clean-html    - delete only HTML file
	@echo   make clean-docx    - delete only DOCX file
	@echo   make help          - show this help
	@echo.
	@echo Examples:
	@echo   make clean html    - clean and rebuild HTML
	@echo   make clean docx    - clean and rebuild DOCX
