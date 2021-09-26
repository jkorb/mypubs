TARGET = mypubs.pdf
SRC_DIR = pdf_src
SRC = $(SRC_DIR)/mypubs_src.md
CSL = $(SRC_DIR)/chicago_adjusted.csl
TEMPLATE = $(SRC_DIR)/template.tex
BIB = biblatex/mypubs.bib

list : $(TARGET)

$(TARGET) : $(SRC) $(BIB) $(CSL) $(TEMPLATE)
	@pandoc -f markdown -t pdf --citeproc --bibliography=$(BIB) --csl=$(CSL) -o $@ --template=$(TEMPLATE) $(SRC)

clean :
	@rm  $(TARGET)
