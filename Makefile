# TODO: Add support for other operating systems in the future.
OS := $(shell uname)
ifneq ($(OS),Linux)
$(error 💀 Incorrect operating system 💀 💀 Visit https://archlinux.org/download/ to download and install the correct operating system 💀)
endif

# Extract name and version from typst.toml
# Target is chosen based on the default Typst package installation path for linux systems.
# See: https://github.com/typst/packages?tab=readme-ov-file#local-packages
NAME := $(shell sed -nE 's/^name\s*=\s*"(.*)"/\1/p' typst.toml)
VERSION := $(shell sed -nE 's/^version\s*=\s*"(.*)"/\1/p' typst.toml)
TARGET := $(HOME)/.local/share/typst/packages/local/$(NAME)/$(VERSION)

.PHONY: all help install uninstall lint test update-test thumbnail

# Default target
all: lint update-test test install thumbnail

# Show available commands
help:
	@echo ""
	@echo "❓ Available Makefile commands:"
	@echo ""
	@echo "  make                Lint, update tests, test, install, and update thumbnail (default)"
	@echo "  make install        Install the package locally to Typst's data directory"
	@echo "  make uninstall      Remove the installed package version"
	@echo "  make lint           Run typst-package-check on the package to lint"
	@echo "  make test           Run tests using tt (tytanic)"
	@echo "  make update-test    Update tests references, ref/, using tt (tytanic)"
	@echo "  make thumbnail      Generate the thumbnail image for the package"
	@echo "  make help           Show this help message"
	@echo ""

# Install the Typst package locally
install:
	@echo "🔧 Installing $(NAME)@$(VERSION) → $(TARGET)"
	@rm -rf "$(TARGET)"
	@mkdir -p "$(TARGET)"
	@cp typst.toml "$(TARGET)/"
	@cp -r src "$(TARGET)/"
	@cp -r template "$(TARGET)/"
	@if [ -f LICENSE ]; then cp LICENSE "$(TARGET)/"; fi
	@if [ -f thumbnail.png ]; then cp thumbnail.png "$(TARGET)/"; fi
	@echo "\033[0;32m✅ Done installing! Import with: #import \"@local/$(NAME):$(VERSION)\": *\033[0m"

# Uninstall the package
uninstall:
	@echo "🧹 Uninstalling $(NAME)@$(VERSION)..."
	@rm -rf "$(TARGET)"
	@echo "\033[0;32m✅ Removed $(TARGET)\033[0m"

# Lint using typst-package-check
# TODO: remove the "|| [ $$? -eq 2 ]" workaround once typst-package-check added a feature to allow --ignore-warnings option
#       or similar to ignore warnings and only return an non-zero code on actual errors.
# See: https://github.com/typst/package-check/issues/29
lint:
	@echo "🔍 Running typst-package-check... for linting"
	@typst-package-check check || [ $$? -eq 2 ]
	@echo "\033[0;32m✅ Lint passed!\033[0m"

# Test using tytanic
test:
	@echo "🧪 Running tests with tytanic..."
	@tt run -v --no-fail-fast
	@echo "\033[0;32m✅ Tests passed!\033[0m"

# Update test using tytanic
update-test:
	@echo "🔄 Updating tests with tytanic..."
	@tt update -v
	@echo "\033[0;32m✅ Tests updated!\033[0m"

# Generate thumbnail image
thumbnail:
	@echo "📸 Generating thumbnail image from template/resume.typ..."
	@typst compile -f png --pages 1 --ppi 250 template/resume.typ thumbnail.png
	@echo "\033[0;32m✅ Thumbnail generated: thumbnail.png\033[0m"
