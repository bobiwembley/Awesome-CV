.PHONY: samy-cv

CC = xelatex
EXAMPLES_DIR = samy-cv
RESUME_DIR = samy-cv/resume-fr
CV_DIR = samy-cv/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x,  cv , $x.pdf)


cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf