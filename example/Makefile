.ONESHELL:
SHELL = bash
VENV = .venv

all: $(VENV)

venv: $(VENV)
$(VENV):
	python3 -m venv $(VENV)
	source $(VENV)/bin/activate
	pip install --upgrade pip wheel

install: $(VENV)
	source $(VENV)/bin/activate
	pip install --upgrade -r requirements.txt
	ansible-galaxy install --ignore-errors -r requirements.yml

clean:
	rm -Rf $(VENV)
