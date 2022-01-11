# Run all commands in a single shell
# See https://www.gnu.org/software/make/manual/html_node/One-Shell.html
.ONESHELL:
SHELL = bash
VENV = .venv

all: $(VENV)

venv: $(VENV)
$(VENV):
	test -f $(VENV)/bin/activate || python3 -m venv $(VENV)
	source $(VENV)/bin/activate
	pip install --upgrade pip

install: $(VENV)
	source $(VENV)/bin/activate
	pip install --upgrade -r requirements.txt

clean:
	rm -Rf $(VENV)
