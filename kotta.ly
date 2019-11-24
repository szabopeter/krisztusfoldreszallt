\version "2.18.2"

\include "dallam.ly"

sopranoVoicePart = \new Staff \with {
  instrumentName = \markup \center-column { S A }
  shortInstrumentName = \markup \center-column { S A }
  midiInstrument = "acoustic grand"
} <<
  \sopranoVoice \\ \altoVoice
>>

tenorVoicePart = \new Staff \with {
  instrumentName = \markup \center-column { T B }
  shortInstrumentName = \markup \center-column { T B }
  midiInstrument = "acoustic grand"
} <<
  \clef bass \tenorVoice \\ \bassVoice
  \addlyrics { \verseOneBass }
  \addlyrics { \verseTwoBass }
>>

\score {
  \new ChoirStaff
  <<
    \partial 8
    \sopranoVoicePart
    \tenorVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
