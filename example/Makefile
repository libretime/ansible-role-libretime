.ONESHELL:
SHELL = bash
VENV = .venv

all: $(VENV)

venv: $(VENV)
$(VENV):
	source $(VENV)/bin/activate
	pip install --upgrade pip wheel

install: $(VENV)
	source $(VENV)/bin/activate
	pip install --upgrade -r requirements.txt
	ansible-galaxy install -r requirements.yml

clean:
	rm -Rf $(VENV)
