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

simple = \relative c {
  \clef alto
  \time 9/1
  f1_"F3" g_"G3" a_"A3" b_"B3" c_"C4" d_"D4" e_"E4" f_"F4" g_"G4"
  \bar "|."
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override TextScript #'font-name = #"Neuton"
    \override TextScript #'font-size = #2
    \override TextScript #'staff-padding = #2
  }
  {
    \simple
  }
}
