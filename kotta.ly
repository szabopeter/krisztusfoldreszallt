\version "2.18.2"

\header {
  title = "Krisztus földre szállt"
  subtitle = "Gerzsenyi Sándor szövege"
  subsubtitle = \markup \right-column {
    "17. századi angol dallamra"
  }
  composer = "Berkesi Sándor"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key a \major
  \time 3/4
  \partial 8
}

sopranoOne = \relative c'' {
  fis,8
  a4 b8 cis8. (d16)   cis8
  b4 gis8 e8. (fis16) gis8
}
sopranoTwo = {
  a4 fis8 fis8. (eis16) fis8
  gis4. cis,4.
}
sopranoThree = \relative c'' {
  a8. (gis16) fis8 eis8. (dis16) eis8
  fis4. fis4.
}
sopranoFour = \relative c'' {
  e4. e8. (dis16) cis8
  b4 gis8 e8. (fis16) gis8
}
sopranoFive = \relative c'' {
  a4 fis8 fis8. (eis16) fis8
  gis4 eis8 cis4.
}
sopranoSix = \relative c'' {
  a8. (gis16) fis8 eis8. (dis16) fis8
  fis4. fis4
}
sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  \sopranoOne
  \sopranoTwo
  \sopranoOne
  \sopranoThree
  \bar "|" \break
  \sopranoFour
  \sopranoFive
  \sopranoFour
  \sopranoSix
}

altoVoice = \relative c' {
  \global
  \dynamicUp
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
}

bassVoice = \relative c {
  \global
  \dynamicUp
}

verseOneBass = \lyricmode {
  Ki az, kit csen -- des á -- hí -- tat -- tal
  Má -- ri -- a be -- pó -- lyált?
  Ne mondd, hogy még nem is -- me -- red a
  Föld -- nek meg -- vál -- tó -- ját.
  
  Halld an -- gyal, é -- nek zen -- gi,
  Jé -- zus Krisz -- tus föld -- re szállt.
  Légy bölcs vagy jám -- bor pász -- tor,
  kí -- nálj Né -- ki szál -- lást!
}

verseTwoBass = \lyricmode {
  Ha nagy ki -- rály, mi -- ként le -- het,
  hogy á -- gya dur -- va já -- szol?
  És fé -- nyes csil -- lo -- gás he -- lyett
  csak egy kis mécs vi -- lá -- gol?
  
  El -- hagy -- ta Ő az é -- gi trónt,
  "s a" menny -- ben min -- de -- nét,
  Szent szí -- ve úgy sze -- ret, 
  le -- hoz -- ta Ő a bé -- két.
}  

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
%\addlyrics { \verseOneBass }
%\addlyrics { \verseTwoBass }

bassVoicePart = \new Staff \with {
  instrumentName = "B."
  shortInstrumentName = "B."
  midiInstrument = "acoustic grand"
} { \clef bass \bassVoice }
%\addlyrics { \verseOneBass }
%\addlyrics { \verseTwoBass }

\score {
  <<
    \sopranoVoicePart
    % \altoVoicePart
    % \tenorVoicePart
    % \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
