

graphicxpsd.zip: clean
	git archive --format=tar --prefix=graphicxpsd/ HEAD | gtar -x

	## remove unpacked files
	rm -f graphicxpsd/.gitignore graphicxpsd/Makefile

	## then, now just make archive
	zip -9 -r graphicxpsd.zip graphicxpsd/*

	rm -rf graphicxpsd
	@echo finished

clean:
	rm -rf graphicxpsd.zip graphicxpsd
	rm -f *.aux *.log *4gfxpsd.*
	find . -type f -name "*~" -delete

.PHONY: graphicxpsd.zip
