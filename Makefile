#!/usr/bin/env bash

dep:
	@echo "Install dependencies required for this repo..."
	@npm install -g lerna
	@lerna bootstrap && lerna link

upgrade:
	@echo "Upgraded dependencies required for this repo..."
	@lerna exec --no-bail -- "ncu -u -f /arcblock\|ocap\|blocklet\|xmark/ && lerna bootstrap && lerna link"

include .makefiles/*.mk
