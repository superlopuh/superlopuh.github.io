
# Define the directory containing the extra html files
EXTRA_DIR := ../scripts

# Define the target filename for the index.html
INDEX_FILE := index.html

# Define the file to append to all generated HTML files
FOOTER_FILE := $(EXTRA_DIR)/footer.html

# List all Markdown files in the source directory
MD_FILES := $(wildcard *.md)

# Generate HTML filenames by replacing .md with .html in Markdown filenames
HTML_FILES := $(patsubst %.md,%.html,$(MD_FILES))

# Generate HTML files from Markdown using the provided command
%.html: %.md $(FOOTER_FILE)
	python3 -m markdown $< > $@
	cat $(FOOTER_FILE) >> $@


# Generate the index.html file with links to HTML files
$(INDEX_FILE): $(HTML_FILES)
	@echo "<h1><a href=\"../index.html\">Writing</a></h1>" > $(INDEX_FILE)
	@for file in $(HTML_FILES); do \
		echo "<p><a href=\"$$file\">$$(grep -o '<h1>.*</h1>' $$file | sed 's/<[^>]*>//g')</a></p>" >> $(INDEX_FILE); \
	done
	@echo "Generated $(INDEX_FILE)"

# Delete HTML files without corresponding Markdown files (except index.html)
clean:
	@for file in $(HTML_FILES); do \
		md_file="$${file%.html}.md"; \
		if [ ! -e "$$md_file" ] && [ "$$file" != "$(INDEX_FILE)" ]; then \
			rm "$$file"; \
			echo "Deleted: $$file"; \
		fi; \
	done

delete-html:
	find . -name "*.html" ! -name "index.html" -exec rm {} +
	@echo "Deleted all html files."

# Default target, which generates HTML files and the index.html
all: $(HTML_FILES) $(INDEX_FILE)

.PHONY: all clean delete-html
