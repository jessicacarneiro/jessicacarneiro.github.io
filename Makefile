.PHONY: resume

resume:
	pdflatex resume/resume_EN.tex

clean:
	rm -f resume_EN.aux resume_EN.log resume_EN.out resume_EN.pdf