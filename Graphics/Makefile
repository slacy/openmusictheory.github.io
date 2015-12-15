.SUFFIXES: .pdf .ly .png .midi
.PHONY: clean

LY=$(wildcard *.ly)
PDF=$(patsubst %.ly,%.pdf,$(LY))
PNG=$(patsubst %.ly,%.png,$(LY))
SVG=$(patsubst %.ly,%.svg,$(LY))

DEFAULT: $(PDF)

VPATH = OUT

%.png : %.ly Makefile
	lilypond -left-padding=33 -dresolution=300 -dbackend=eps --png $<

%.svg : %.ly Makefile
	lilypond -left-padding=33 -dresolution=300 -dbackend=svg $<

clean:
	rm -f $(PDF)
