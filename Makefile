##
# g732
#
# @file
# @version 0.1

INSTALL_PATH = $(if ${TEXMFHOME}, ${TEXMFHOME}, ~/texmf/tex/latex/g732)
STY = g732.sty


install:
	mkdir -p $(INSTALL_PATH)
	cp -f $(STY) $(INSTALL_PATH)/$(STY)

uninstall:
	rm $(INSTALL_PATH)/$(STY)

clean:
	latexmk -c
	rm -drf _minted*
	rm *.xdv

# end
