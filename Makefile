

REPORT = report.Rmd
OUTPUT = report.html

all: $(OUTPUT)

$(OUTPUT): $(REPORT)
	Rscript -e "rmarkdown::render('$(REPORT)', output_format = 'html_document')"

clean:
	rm -f $(OUTPUT)
	rm -rf $(REPORT:.Rmd=_files)

.PHONY: all clean
