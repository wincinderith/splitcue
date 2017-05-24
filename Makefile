DISTRIB_ID=$(shell lsb_release -is)

BIN_NAME=splitcue
BIN_DIR=/usr/local/bin

.DEFAULT_GOAL:=install
.PHONY: install uninstall

install: $(BIN_NAME)
ifeq ($(DISTRIB_ID),Ubuntu)
	apt install cuetools shntool
endif
	cp $(BIN_NAME) $(BIN_DIR)

uninstall:
	rm -f $(BIN_DIR)/$(BIN_NAME)
