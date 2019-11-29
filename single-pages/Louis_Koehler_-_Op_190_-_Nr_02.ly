\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 22)

\paper {
  ragged-last = ##f
}

pieceNumber="2"

\include "../global-files/gitlink.ily"
\include "../global-files/header.ily"

%% Score Number 2.

\score {
  \new PianoStaff \with {
    instrumentName =  \markup { \bold \huge \number { "2." }}
  }
  <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    }
    \relative c'' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      \mark  \markup { \bold "2." }

      c2 e f d e c d g e c d f e d c1 \bar "|." 

    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    }

    \relative c' {
      \key c \major
      \numericTimeSignature
      \time 4/4
      c2 e f d e c d g e c d f e d c1 \bar "|."
    }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
