\version "2.18.2"

\include "dallam.ly"

sopranoVoicePart = \new Staff \with {
  instrumentName = "S."
  shortInstrumentName = "S."
  midiInstrument = "acoustic grand"
} { \sopranoVoice }
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

altoVoicePart = \new Staff \with {
  instrumentName = "A."
  shortInstrumentName = "A."
  midiInstrument = "acoustic grand"
} { \altoVoice }
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

tenorVoicePart = \new Staff \with {
  instrumentName = "T."
  shortInstrumentName = "T."
  midiInstrument = "acoustic grand"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

bassVoicePart = \new Staff \with {
  instrumentName = "B."
  shortInstrumentName = "B."
  midiInstrument = "acoustic grand"
} { \clef bass \bassVoice }
\addlyrics { \verseOneBass }
\addlyrics { \verseTwoBass }

\score {
  <<
    \partial 8
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
