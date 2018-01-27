

graphicxpsd.tar.xz: clean
	git archive --format=tar --prefix=graphicxpsd/ HEAD | gtar -x

	## remove unpacked files
	rm -f graphicxpsd/.gitignore graphicxpsd/Makefile

	## then, now just make archive
	gtar --owner 0 --group 0 -cf - graphicxpsd | pixz -9 -p 2 >graphicxpsd.tar.xz

	rm -rf graphicxpsd
	@echo finished

clean:
	rm -rf graphicxpsd.tar.xz graphicxpsd
	rm -f *.aux *.log *4gfxpsd.*
	find . -type f -name "*~" -delete

.PHONY: graphicxpsd.tar.xz
