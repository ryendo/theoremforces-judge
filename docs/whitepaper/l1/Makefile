TEX := theoremforces-l1-whitepaper.tex
ROOT := ../../..
BUILD_DIR := $(ROOT)/tmp/pdfs/theoremforces-l1-whitepaper
OUTPUT_DIR := $(ROOT)/output/pdf
SOURCE_PDF := theoremforces-l1-whitepaper.pdf
PDF := theoremforces-l1-whitepaper-ver-0.3.pdf

.PHONY: all clean

all:
	mkdir -p $(BUILD_DIR) $(OUTPUT_DIR)
	LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 latexmk -lualatex -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_DIR) $(TEX)
	cp $(BUILD_DIR)/$(SOURCE_PDF) $(OUTPUT_DIR)/$(PDF)

clean:
	LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 latexmk -C -outdir=$(BUILD_DIR) $(TEX)
	rm -f $(OUTPUT_DIR)/$(PDF)
