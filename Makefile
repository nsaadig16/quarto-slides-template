.PHONY: clean preview render publish

clean:
	@rm -rf .quarto _site slide_fiels site_libs
preview: clean
	quarto preview slides.qmd
render: clean
	quarto render slides.qmd
publish: render
	quarto publish gh-pages