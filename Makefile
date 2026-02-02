TARGETS := $(shell grep -E '^[a-zA-Z_-]+:' Makefile | cut -d':' -f1)
.PHONY: $(TARGETS)

verify:
	@echo "🔍 Verifying Python environment..."
	@python3 --version
	@pip --version
	@pip check
	@echo "✅ Environment verification complete."
	