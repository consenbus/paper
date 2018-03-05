# https://stackoverflow.com/questions/1859113/append-date-and-time-to-an-environment-variable-in-linux-makefile#1859205
NOW=`date +'%Y%m%d'`

pdf:
	pandoc Whitepaper-v1.md \
		--from=markdown \
		--output=build/consenbus-whitepaper-${NOW}.pdf \
		--template=template.latex \
		--latex-engine=xelatex \
		-V mainfont="Songti SC" \
		-V fontsize=24pt \
		--toc \
		-N

faq:
	pandoc FAQ.md \
		--from=markdown \
		--output=build/consenbus-faq-${NOW}.pdf \
		--template=template.latex \
		--latex-engine=xelatex \
		-V mainfont="Songti SC" \
		-V fontsize=24pt \
		-N
