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
  \time 6/8
}

sopranoOne = \relative c'' {
  fis,8
  a4 b8 cis8. (d16)   cis8
  b4 gis8 e8. (fis16) gis8
}
sopranoTwo = {
  a4 fis8 fis8. (eis16) fis8
  gis4. cis,4
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
  a8. (gis16) fis8 eis8. (dis16) eis8
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
  \bar "|."
}

altoOne = \relative c'' {
  fis,8
  fis4 gis8 a4 a8
  gis4 fis8 e4 d8
}
altoTwo = {
  cis8 (d) cis cis4 b8
  cis8. (d16 cis8) cis4
}
altoThree = \relative c' {
  cis4 d8 cis4 cis8
  d4. cis4.
}
altoFour = \relative c'' {
  cis4. cis8. (b16) a8
  gis4 fis8 e4 d8
}
altoFive = \relative c' {
  cis8 (d8) cis8 cis4 b8
  cis8 (d8) cis8 cis4.
}
altoSix = \relative c'' {
  a4. a4 a8
  gis4 fis8 e4 e8
}
altoSeven = \relative c' {
  cis4 d8 cis4 cis8
  d4. cis4
}
altoVoice = \relative c' {
  \global
  \dynamicUp
  \altoOne
  \altoTwo
  \altoOne
  \altoThree
  %\bar "|" \break
  \altoFour
  \altoFive
  \altoSix
  \altoSeven
}

tenorOne = \relative c {
  fis8
  a4 b8 cis4 d8
  e4 b8 gis8 (a8) b8
}
tenorVoice = \relative c' {
  \global
  \dynamicUp
  \tenorOne
  a4 a8 fis4 fis8
  eis4. eis4
  \tenorOne
  a4 a8 gis8 (a8) b8
  gis8 (a8 b8) a4.

  e'4. cis4 dis8
  e4 b8 gis8 (a8) b8

  a4 a8 fis4 fis8
  eis4 gis8 eis4.

  cis'4. cis8 (b8) e8
  dis4 b8 cis4 b8

  a4 a8 gis8 (a8) b8
  gis8 (a8) b8 a4
}

bassOne = \relative c {
  fis8
  fis4 fis8 fis4 fis8
  e4 e8 e4 e8
}
bassVoice = \relative c {
  \global
  \dynamicUp
  \bassOne
  fis4 e8 d4 d8
  cis4. cis4
  \bassOne
  fis4 b,8 cis4 cis8
  fis4. fis4.

  a4. a4 a8
  e4 e8 e4 e8

  fis4 e8 d4 d8
  cis4 cis8 cis4.

  a'4. fis4 fis8
  gis4 gis8 cis,4 cis8

  fis4 b,8 cis4 cis8
  fis4. fis4
}

verseOneBass = \lyricmode {
  "1. Ki" az, kit csen -- des á -- hí -- tat -- tal
  Má -- ri -- a be -- pó -- lyált?
  Ne mondd, hogy még nem is -- me -- red a
  Föld -- nek meg -- vál -- tó -- ját.
  
  Halld an -- gyal, é -- nek zen -- gi,
  Jé -- zus Krisz -- tus föld -- re szállt.
  Légy bölcs vagy jám -- bor pász -- tor,
  kí -- nálj Né -- ki szál -- lást!
}

verseTwoBass = \lyricmode {
  "2. Ha" nagy ki -- rály, mi -- ként le -- het,
  hogy á -- gya dur -- va já -- szol?
  És fé -- nyes csil -- lo -- gás he -- lyett
  csak egy kis mécs vi -- lá -- gol?
  
  El -- hagy -- ta Ő az é -- gi trónt,
  "s a" menny -- ben min -- de -- nét,
  Szent szí -- ve úgy sze -- ret, 
  le -- hoz -- ta Ő a bé -- két.
}
