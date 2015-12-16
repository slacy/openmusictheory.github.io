\version "2.16.2"
\language "english"

\header {
  title = ""
  tagline = ""
}

\paper {
  indent = 0\mm
  top-margin = 0\mm
  bottom-margin = 0\mm
  left-margin = 0\mm
  right-margin = 0\mm
  evenFooterMarkup = ""
  oddFooterMarkup = ""
  evenHeaderMarkup = ""
  oddHeaderMarkup = ""
}

simple = \relative c' {
  \clef treble
  \time 13/1

  d1 e fs g a b cs d \bar"|."
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override TextScript #'font-name = #"Droid Serif"
    \override TextScript #'font-size = #2
    \override TextScript #'staff-padding = #3
  }
  {
    \simple
  }
  \addlyrics {
    \set stanza = #"Bar!"
    \lyricmode { "D4" "E4" "F#4" "G4" "A4" "B4" "C#5" "D5" }
  }
  \addlyrics {
    \set stanza = #"Scale degree"
    \lyricmode { \markup { \center-column { "‸" "1" } "2" } }
  }
}
