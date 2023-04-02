.PHONY: default run uvicorn

export PYTHONPATH=$(shell pwd):$(shell pwd)/src/delivery

default:
	@printf "$$HELP"

uvicorn:
	uvicorn main:app --reload

run: uvicorn

define HELP
    - make run\t\tLaunch the application.

Please execute "make <command>". Example: make run

endef

export HELP
