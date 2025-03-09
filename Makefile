.DEFAULT_GOAL := build
OUT_DIR := ./out

clean:
	rm -rf $(OUT_DIR)

build:
	@mkdir -p $(OUT_DIR)
	@awk '!/${{replaced with contents of trainging files}}/' ./training-languages.md > \
	 $(OUT_DIR)/language-training.md
	@find ./languages -name "*.md" -type f | xargs cat >> $(OUT_DIR)/language-training.md

build-eval-context:
	@mkdir -p $(OUT_DIR)
	@awk '!/${{replaced with contents of trainging files}}/' ./training-languages.md > \
	 $(OUT_DIR)/eval-context.md
	@cat ./languages/blocks-statements.md >> $(OUT_DIR)/eval-context.md

publish: build
	mkdir -p ./published
	@cp $(OUT_DIR)/language-training.md ./published/language-training.md

.PHONY: clean build publish
