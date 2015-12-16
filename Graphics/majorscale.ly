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
    \override TextScript #'font-name = #"Neuton"
    \override TextScript #'font-size = #2
    \override TextScript #'staff-padding = #3
  }
  {
    \simple
  }
}
