APP_NAME := $(shell grep "name = " Cargo.toml | cut -d'"' -f2)
SOURCES := $(shell find . -type f -name "*.rs" -or -name "*.toml")
TARGET_LINUX_APP := target/release/$(APP_NAME)
TARGET_WINDOWS_APP := target/x86_64-pc-windows-gnu/$(APP_NAME)

.DEFAULT: help

.PHONY: help
help:
	@grep -E '^[///a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install dependencies
	@echo no deps yet
.PHONY: check
check: ## Check code
	@cargo check
.PHONY: build-dev-watch
build-dev-watch: ## Automatic execution upon updates
	@cargo watch -w src -w Cargo.toml -x "build -q"
.PHONY: run
run: ## Run the built app
	@$(TARGET_LINUX_APP)


$(TARGET_LINUX_APP): $(SOURCES) ## Release LINUX version of the app
	@cargo build --release
.PHONY: build-release-linux
build-release-linux: ## Build application
	@$(MAKE) -s $(TARGET_LINUX_APP)


$(TARGET_WINDOWS_APP): $(SOURCES) ## Release WINDOWS version of the app
	@cargo build --target=x86_64-pc-windows-gnu --release
.PHONY: build-release-windows
build-release-windows: ## Build application
	@$(MAKE) -s $(TARGET_WINDOWS_APP)
