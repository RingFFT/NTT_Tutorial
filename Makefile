.PHONY: all slides notes books clean

all: slides notes books

slides: figures
	cd slides && pdflatex slides.tex
	cd slides && biber slides || true
	cd slides && pdflatex slides.tex
	cd slides && pdflatex slides.tex
	cp slides/slides.pdf ./slides.pdf

# 編譯所有 TikZ 圖片成 PDF
figures:
	cd slides/figures && \
	for file in tikzcd*.tex; do pdflatex $$file; done && \
	mv *.pdf compiled/

notes:
	@echo "Notes 尚未實作"

books:
	@echo "Books 尚未實作"

clean:
	rm -f slides/*.aux slides/*.log slides/*.bcf slides/*.out slides/*.bbl slides/*.blg slides/*.toc slides/*.nav slides/*.snm slides/*.vrb slides/*.bcf-SAVE-ERROR slides/*.dvi slides/*.fdb_latexmk slides/*.fls
	rm -f slides/sections/*.aux slides/figures/*.aux slides/figures/*.log

