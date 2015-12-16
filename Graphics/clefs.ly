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
  \clef treble
  \time 8/1

  c1^\markup "Treble" s1
  \clef bass
  c1^"Bass" s1
  \clef alto
  c1^"Alto" s1
  \clef tenor
  c1^"Tenor" s1
  \bar "|."
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
