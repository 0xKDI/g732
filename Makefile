##
# g732
#
# @file
# @version 0.1

# paths
INSTALL_PATH = ~/texmf/tex/latex/g732
TARGET = g732.sty


install:
	mkdir -p $(INSTALL_PATH)
	cp -f $(TARGET) $(INSTALL_PATH)/$(TARGET)

uninstall:
	rm -drf $(INSTALL_PATH)

# end
