\version "2.20.0"
\language "english"

\include "parts_stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"

\score {
    \removeWithTag #'voice1
    \removeWithTag #'voice2
    \removeWithTag #'voice5
    \removeWithTag #'voice6
        {
            \include "01.ly"
            \include "02.ly"
            \include "03.ly"
            \include "04.ly"
            \include "05.ly"
            \include "06.ly"
            \include "ghost.ly"
            \include "07.ly"
            \include "08.ly"
            \include "09.ly"
            \include "10.ly"
            \include "11.ly"
            \include "12.ly"
        }
}
