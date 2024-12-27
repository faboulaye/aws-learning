SAM 			= sam
AWS				= aws
NPM				= npm
EVAL			= eval
.PHONY			: samconfig install

.DEFAULT_GOAL	= help

# Colors stdout message
NO_COLOR		= \033[0m
ACTION			= \033[32;01m
RED          	:= $(shell tput -Txterm setaf 1)
MAGENTA        	:= $(shell tput -Txterm setaf 5)
BLUE        	:= $(shell tput -Txterm setaf 6)
RESET 			:= $(shell tput -Txterm sgr0)

help:
	@awk 'BEGIN {FS = ":.*##"; } /^[\.a-zA-Z0-9_-]+:.*?##/ { printf "$(ACTION)%-30s$(NO_COLOR) %s\n", $$1, $$2 }' $(MAKEFILE_LIST) | sort

install:
	$(info [*] Installing node utilities)
	$(NPM) install

samconfig: ## Generate samconfig.toml
	$(info ${BLUE}[*] Generate samconfig from the template${RESET})
	$(NPM) run init:samconfig

# *** lambda logs filtering setup
lambda-logs-filtering.deploy: ## Deploy lambda logs filtering
	$(info ${BLUE}[*] Deploy lambda logs filtering ...${RESET})
	$(SAM) package --config-env lambda-logs-filtering
	$(SAM) deploy --config-env lambda-logs-filtering --no-fail-on-empty-changeset