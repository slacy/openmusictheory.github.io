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
  \time 8/1
  d1_"D3" e_"E3" f_"F3" g_"G3" a_"A3" b_"B3" c_"C4" d_"D4"
  \bar "|."
}

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override TextScript #'font-name = #"Neuton Bold"
    \override TextScript #'font-size = #2
    \override TextScript #'staff-padding = #2
  }
  {
    \simple
  }
}
