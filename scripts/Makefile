# scripts 
#
#

# probably want to convert to mp3's style for all
SpecialStyle='mp3-style.css'
SpecialPages=mp3info.pl.html chu0.pl.html codes-poker.pl.html

NormalPages=lincoln-whatsnextnews.pl.html patternword.pl.html test_HSL.pl.html unroll.pl.html words-count.pl.html  chu.pl.html
STYLE=style.css


all: $(NormalPages) $(SpecialPages)

$(NormalPages): %.pl.html: %.pl
	perltidy -html -css=$(STYLE)  $<

$(SpecialPages): %.pl.html: %.pl
	set
	perltidy -htmld -css=$(SpecialStyle)  $<


# foo.docx: foo.tex
#	pandoc foo.tex --from latex --to docx > foo.docx

# clean:
#	rm $(objects)
