.PHONY: samy-cv

CC = xelatex
EXAMPLES_DIR = samy-cv/
RESUME_DIR = samy-cv/resume-en
CV_DIR = samy-cv/
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex') resume/summary.tex
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x,  cv , $x.pdf)

#resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

#coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
