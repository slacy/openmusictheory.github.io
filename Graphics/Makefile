.SUFFIXES: .pdf .ly .png .midi .svg
.PHONY: clean

LY=$(wildcard *.ly)
PDF=$(patsubst %.ly,%.pdf,$(LY))
PNG=$(patsubst %.ly,%.png,$(LY))
SVG=$(patsubst %.ly,%.svg,$(LY))

DEFAULT: $(PNG)

VPATH = OUT

%.png : %.ly Makefile
	lilypond -left-padding=33 -dresolution=300 -dbackend=eps --png $<

%.svg : %.ly Makefile
	lilypond -left-padding=33 -dresolution=300 -dbackend=svg $<

clean:
	rm -f $(PDF) $(PNG) $(SVG)
