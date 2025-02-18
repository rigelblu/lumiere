.DEFAULT_GOAL := build
OUT_DIR := ./out

clean:
	rm -rf $(OUT_DIR)

build:
	@mkdir -p $(OUT_DIR)
	@cat ./training-languages.md > $(OUT_DIR)/language-training.md
	@find ./languages -name "*.md" -type f | xargs cat >> $(OUT_DIR)/language-training.md

.PHONY: clean build
