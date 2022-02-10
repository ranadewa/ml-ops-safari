install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C,W1203,E1101 mlib cli utilscli

all: install lint test