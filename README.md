# Makefile for generating README.md

# Variables
README = README.md
SCRIPT = guessinggame.sh

# Targets
all: $(README)

$(README):
	@echo "# Guessing Game" > $(README)
	@echo "Date and time of 'make' run: $(shell date)" >> $(README)
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < $(SCRIPT))" >> $(README)

# Clean the generated files
clean:
	rm -f $(README)
