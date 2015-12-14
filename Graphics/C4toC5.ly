\version "2.14.2"

%% #(set-default-paper-size "letter")
%% #(set-global-staff-size 20)

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
  c1_"C4" d_"D4" e_"E4" f_"F4" g_"G4" a_"A4" b_"B4" c_"C5"
}

\score {
  <<
  \new Staff \with {
    \remove "Time_signature_engraver"
    \override TextScript #'font-name = #"Neuton Bold"
    \override TextScript #'staff-padding = #3
  }
  {
    \simple
  }
%{
  \new Lyrics {
    \override LyricText #'font-name = #"Neuton Bold"
    \lyricmode {
      "C4" "D4" "E4" "F4" "G4" "A4" "B4" "C5"
    }
  }
%}
  >>
  \layout {
    indent = 30\mm
  }
  %% \context { \Score \remove "Bar_number_engraver" }
  %% \context { \Staff \remove "Time_signature_engraver" }
}
