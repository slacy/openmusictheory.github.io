\version "2.16.2"

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
  \clef alto
  \time 8/1
  f g a b c d e f g
  \bar "|."
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override TextScript #'font-name = #"Neuton Bold"
    \override TextScript #'font-size = #2
    \override TextScript #'staff-padding = #3
  }
  {
    \simple
  }
}
