
graphicxpsd.tds.zip:
	rm -f graphicxpsd.tds.zip

	mkdir -p Work/tex/latex/graphicxpsd
	mkdir -p Work/doc/latex/graphicxpsd
	cp -a graphicxpsd.sty Work/tex/latex/graphicxpsd/
	cp -a README.md LICENSE Work/doc/latex/graphicxpsd/
	cp -a tigerpsdfmt.psd test-gin-rule-psd.tex Work/doc/latex/graphicxpsd/
	cp -a graphicxpsd.tex graphicxpsd.pdf Work/doc/latex/graphicxpsd/
	cd Work/ && zip -9 ../graphicxpsd.tds.zip {doc,tex}/latex/graphicxpsd/*
	@echo finished

clean:
	rm -f *.aux *.log
	find . -type f -name "*~" -delete

.PHONY: graphicxpsd.tds.zip

