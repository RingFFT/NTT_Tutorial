# 目標檔名 (不含副檔名)
TARGET = slides

# 主要編譯目標
all: $(TARGET).pdf

# 定義如何產生 PDF
$(TARGET).pdf: $(TARGET).tex section1.tex section2.tex section3.tex references.bib
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

# 清理中間檔
clean:
	rm -f *.aux *.log *.out *.bcf *.blg *.bbl *.toc *.snm *.nav *.run.xml
	rm -f $(TARGET).pdf

# 在某些系統上，make 會把 clean 當成檔案而非指令，所以加 .PHONY
.PHONY: all clean
