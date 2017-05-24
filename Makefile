BIN_NAME=splitcue
BIN_DIR=/usr/local/bin

.PHONY: install uninstall default
install: $(BIN_NAME)
	cp $(BIN_NAME) $(BIN_DIR)
uninstall:
	rm -f $(BIN_DIR)/$(BIN_NAME)
default: install
