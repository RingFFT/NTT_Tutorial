# 主要投影片檔名（不含副檔名）
TARGET = slides

# 這裡列出所有需要單獨編譯的 TikZ-CD 檔 (不含 .tex 副檔名)
TIKZCD_SRCS =  tikzcd1 tikzcd2 tikzcd3 tikzcd4 tikzcd5

# 由上面那些 .tex 檔，對應要產生的 .pdf 檔
TIKZCD_PDFS = $(TIKZCD_SRCS:%=%.pdf)

#-----------------------------------------------------------------------
# [1] 一般編譯目標：會先確保所有 TIKZCD_PDFS 都已編譯好，
#    然後再編譯主檔 slides.pdf
all: $(TARGET).pdf

#-----------------------------------------------------------------------
# [2] 產生主投影片 PDF 的規則
#    這裡把 $(TIKZCD_PDFS) 加在相依檔中，代表在編譯 slides.tex 之前，
#    必須先把所有 tikzcd? 的 PDF 都編好
$(TARGET).pdf: $(TARGET).tex section1.tex section2.tex section3.tex section4.tex references.bib $(TIKZCD_PDFS)
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex
# 如果需要 biblatex/biber，可能還需要 biber + 兩遍 pdflatex
# biber $(TARGET)
# pdflatex $(TARGET).tex
# pdflatex $(TARGET).tex

#-----------------------------------------------------------------------
# [3] 編譯所有 tikzcd? 檔案 (單獨的)
#    這是一個「模式規則」(pattern rule)，只要符合 %.pdf: %.tex 就套用。
#    (會對 mytikzcd, tikzcd1, tikzcd2... 都生效)
%.pdf: %.tex
	pdflatex $<
	pdflatex $<
	# 一般來說，TikZ 簡單圖只需一次編譯即可；若有交叉參照，可兩次。

#-----------------------------------------------------------------------
# [4] 清理中間檔
clean:
	rm -f *.aux *.log *.out *.bcf *.blg *.bbl *.toc *.snm *.nav *.run.xml
	rm -f *.synctex.gz
	rm -f $(TARGET).pdf
	rm -f $(TIKZCD_PDFS)  # 把所有 tikzcd?.pdf 也刪掉

# 在某些系統上，make 會把 clean 當成檔案而非指令，所以加 .PHONY
.PHONY: all clean
