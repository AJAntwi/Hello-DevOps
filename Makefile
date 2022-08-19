setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.myrepo

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C hello.py

all: install lint test