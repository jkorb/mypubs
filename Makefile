TARGET = mypubs.pdf
SRC = list_src/list.md
CSL = list_src/chicago_adjusted.csl
BIB = biblatex/mypubs.bib

list : $(TARGET)

$(TARGET) : $(SRC) $(BIB) $(CSL)
	@pandoc -f markdown -t pdf --citeproc --bibliography=$(BIB) --csl=$(CSL) -o $@ $(SRC)

clean :
	@rm  $(TARGET)
