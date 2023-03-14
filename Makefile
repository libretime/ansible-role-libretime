SHELL = bash
VENV = .venv

all: install

install: $(VENV)
$(VENV):
	python3 -m venv $(VENV)
	$(VENV)/bin/pip install --upgrade pip wheel
	$(VENV)/bin/pip install -r requirements.txt
	$(VENV)/bin/ansible-galaxy install -r requirements.yml

lint: $(VENV)
	$(VENV)/bin/ansible-lint --force-color

test: $(VENV)
	$(VENV)/bin/molecule test

clean:
	rm -Rf $(VENV)
