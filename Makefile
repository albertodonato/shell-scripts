.DEFAULT_GOAL := lint

BASH_SCRIPTS = $(shell for f in bin/*; do awk 'NR==1 && /#.*bash/ { print FILENAME; }' $$f; done)

lint:
	@shellcheck -s bash $(BASH_SCRIPTS)
.PHONY: lint
