# Run all commands in a single shell
# See https://www.gnu.org/software/make/manual/html_node/One-Shell.html
.ONESHELL:
SHELL := bash

all: clean install

clean:
	rm -Rf venv

venv:
	test -f venv/bin/activate || python3 -m venv venv
	source venv/bin/activate
	pip -q install --upgrade pip

install: venv
	source venv/bin/activate
	pip -q install --upgrade -r requirements.txt
