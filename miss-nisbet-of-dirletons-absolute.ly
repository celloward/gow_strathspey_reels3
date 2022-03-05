\version "2.22.1"
#(set-global-staff-size 19)

\header {
	composer = "Nathaniel Gow"
	title = "Miss Nisbet of Dirleton's"
}


frontMatter = {
  \time 2/2
  \key a \mixolydian
}

dashPlus = "trill"

melody = {
\frontMatter
\partial 8 e'8 | a a e'-+ c' b g g b | a a e' a cis'-+ d' e' fis' | g' d' e' c'-+ b g g b | a a e'-+ b cis' a a \bar ":..:" gis'( | a') e' e' g' b g g gis'( | a') e' e' fis' g' b' a' fis' | g'-+ d' e' c' b g g b | a a e'-+ b cis' a a gis'(| a') e' e' g' b g g gis'( | a') e' e' fis' g' b' a' fis' | g' d' e' c' b d' g b | a a' e' fis' cis' a a \bar ".:"
}

bass = {
  \clef "bass"
  \frontMatter
  \partial 8 r8 | a,4a,g,g, | a,a,a,a, | a,a,g,g,| a,e,a,,a,,8 \bar ":..:" r | a,4a,g,g, | a,a,a,a, | b,c g,g, | a,e,a,,a,, | a,a,g,g, | a,a,a,a, | b,c g,g, | a,e,a,,a,, \bar ".:"
}

harmonies = \chordmode {
  r8 | a2 g | a1 | a2 g | a4 e a2 |
  a2 g | a1 | g4 c g2 | a4 e a2 |
  a2 g | a1 | g4 c g2 | a4 e a2 |
}


\score {
  \transpose c c'
    <<
      \new Staff = "top"
      \new Voice = "melody" {
	\melody
      }
      \new ChordNames \with {alignAboveContext = "top"} {
	\set chordChanges = ##t
	\harmonies
      }
      \new Staff = "bottom"
      \new Voice = "bass" {
	\bass
      }
    >>
}

\layout {
  indent = #0
  \context {
    \ChordNames
    noChordSymbol = ""
  }
}