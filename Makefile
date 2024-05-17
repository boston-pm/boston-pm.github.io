# scripts 
#
#


# explicit expansion now, instead of deferred
MarkDown=$(wildcard *.md)

Pages=$(MarkDown:.md=.html)

# what do we not generate? declare those explicitly
RawPages=Damian2006Mementos.html

NoneSuch=$(RawPages:.html=.md)


STYLE=pandoc.css

report:
	@echo MD: $(MarkDown)
	@echo PG: $(Pages)
	@echo RP: $(RawPages)
	@echo NS: $(NoneSuch)

all: report $(Pages) $(RawPages)
	git status

$(NoneSuch):
	@echo Nothing done for $@

extensions="+pipe_tables"
flags="--title-prefix=Boston.pm --toc --toc-depth=1"

# $(Pages): %.html: %.md
$(Pages): 
	pandoc -s -o $@ --css pandoc.css ${flags} -f markdown${extensions}  $>



# foo.docx: foo.tex
#	pandoc foo.tex --from latex --to docx > foo.docx

# clean:
#	rm $(objects)
