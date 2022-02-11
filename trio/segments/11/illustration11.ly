\version "2.20.0"
\language "english"
\include "../../build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=60
            \time 4/4
            s1 * 1
            \boxed-markup "She has something to tell you" 1.5
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \bar "||"
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { vc. }
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        \slurDashed
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        \ppp
                        _ \markup \italic { Dolcissimo }
                        [
                        (
                        \boxed-markup "FB, MST" 1
                        fs'16
                        cs''16
                        \revert Staff.Stem.stemlet-length
                        e''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'16
                        [
                        g'16
                        d'16
                        )
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        af,16
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        af,4
                        fs4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        - \tenuto
                        ]
                        bf,4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,8.
                        [
                        \slurDashed
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        a16
                        \ppp
                        ]
                        (
                        \boxed-markup "FB, MST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        f'16
                        [
                        c''16
                        ef''16
                        \revert Staff.Stem.stemlet-length
                        bf'16
                        )
                        ]
                        \slurSolid
                        \clef "bass"
                        cs4
                        \p
                        - \tenuto
                        ~
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        cs16
                        [
                        \slurDashed
                        \clef "treble"
                        af'16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        fs''16
                        \revert Staff.Stem.stemlet-length
                        cs''16
                        )
                        ]
                        \slurSolid
                        \clef "bass"
                        af4
                        \p
                        - \tenuto
                        ~
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        af8.
                        [
                        \revert Staff.Stem.stemlet-length
                        af16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        [
                        \revert Staff.Stem.stemlet-length
                        ef8
                        - \tenuto
                        ~
                        ]
                        ef4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef16
                        [
                        \revert Staff.Stem.stemlet-length
                        ef,8.
                        - \tenuto
                        ]
                        \slurDashed
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        \ppp
                        [
                        (
                        \boxed-markup "FB, MST" 1
                        b'16
                        g''16
                        )
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        e16
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        e4
                        fs4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs8.
                        [
                        \revert Staff.Stem.stemlet-length
                        b,16
                        - \tenuto
                        ~
                        ]
                        b,4
                        \override Staff.Stem.stemlet-length = 0.75
                        fs,8.
                        - \tenuto
                        [
                        \slurDashed
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        d'16
                        \ppp
                        ]
                        (
                        \boxed-markup "FB, MST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        [
                        f''16
                        c''16
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        [
                        af'16
                        )
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        cs,8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        cs,16
                        [
                        \slurDashed
                        \clef "treble"
                        fs'16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        cs''16
                        \revert Staff.Stem.stemlet-length
                        e''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'16
                        [
                        g''16
                        d''16
                        \revert Staff.Stem.stemlet-length
                        a'16
                        )
                        ]
                        \slurSolid
                        \clef "bass"
                        g4
                        \p
                        - \tenuto
                        ~
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        g16
                        [
                        \revert Staff.Stem.stemlet-length
                        cs8.
                        - \tenuto
                        ~
                        ]
                        cs4
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        - \tenuto
                        [
                        \revert Staff.Stem.stemlet-length
                        a16
                        - \tenuto
                        ~
                        ]
                        a4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a8
                        [
                        \slurDashed
                        \clef "treble"
                        f'16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        \revert Staff.Stem.stemlet-length
                        c''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''16
                        [
                        bf'16
                        af'16
                        \revert Staff.Stem.stemlet-length
                        fs'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        )
                        [
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        d8.
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        d8
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        e16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e8
                        [
                        \revert Staff.Stem.stemlet-length
                        e,8
                        - \tenuto
                        ~
                        ]
                        e,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,16
                        [
                        \slurDashed
                        \clef "treble"
                        e''16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        b'16
                        \revert Staff.Stem.stemlet-length
                        g'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        [
                        a16
                        )
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        f8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        f8.
                        [
                        \slurDashed
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        f''16
                        \ppp
                        ]
                        (
                        \boxed-markup "FB, MST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        c''16
                        [
                        ef'16
                        )
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        b,8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        b,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,16
                        [
                        \revert Staff.Stem.stemlet-length
                        b8.
                        - \tenuto
                        ]
                        g4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g8.
                        [
                        \revert Staff.Stem.stemlet-length
                        g,16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g,8
                        [
                        \slurDashed
                        \clef "treble"
                        bf'16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        \revert Staff.Stem.stemlet-length
                        af'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''16
                        )
                        [
                        \slurSolid
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        c8.
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        c8
                        [
                        \revert Staff.Stem.stemlet-length
                        d8
                        - \tenuto
                        ~
                        ]
                        d4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d16
                        [
                        \revert Staff.Stem.stemlet-length
                        ef,8.
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef,8
                        [
                        \revert Staff.Stem.stemlet-length
                        d,8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d,16
                        [
                        \slurDashed
                        \clef "treble"
                        cs''16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        e''16
                        \revert Staff.Stem.stemlet-length
                        b'16
                        )
                        ]
                        \slurSolid
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { cb. }
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 1
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        \slurDashed
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        \ppp
                        _ \markup \italic { Dolcissimo }
                        [
                        (
                        \boxed-markup "FB, MST" 1
                        af16
                        )
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        cs'8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        ef16
                        - \tenuto
                        ~
                        ]
                        ef4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef8
                        [
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        - \tenuto
                        ~
                        ]
                        bf,4
                        \slurDashed
                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        \ppp
                        [
                        (
                        \boxed-markup "FB, MST" 1
                        b16
                        d'16
                        \revert Staff.Stem.stemlet-length
                        a16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g16
                        [
                        f16
                        c'16
                        )
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        af16
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        af4
                        e'4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf8.
                        - \tenuto
                        ]
                        fs4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs8.
                        [
                        \slurDashed
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \ppp
                        ]
                        (
                        \boxed-markup "FB, MST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        bf16
                        [
                        fs'16
                        cs'16
                        \revert Staff.Stem.stemlet-length
                        af16
                        )
                        ]
                        \slurSolid
                        b4
                        \p
                        - \tenuto
                        ~
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        \slurDashed
                        e'16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        b16
                        \revert Staff.Stem.stemlet-length
                        d16
                        )
                        ]
                        \slurSolid
                        cs4
                        \p
                        - \tenuto
                        ~
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        cs8.
                        [
                        \revert Staff.Stem.stemlet-length
                        fs'16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'8
                        [
                        \revert Staff.Stem.stemlet-length
                        e8
                        - \tenuto
                        ~
                        ]
                        e4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e16
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'8.
                        - \tenuto
                        ]
                        \slurDashed
                        \override Staff.Stem.stemlet-length = 0.75
                        a16
                        \ppp
                        [
                        (
                        \boxed-markup "FB, MST" 1
                        g16
                        f16
                        )
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        d16
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        d4
                        b,4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        a16
                        - \tenuto
                        ~
                        ]
                        a4
                        \override Staff.Stem.stemlet-length = 0.75
                        e'8.
                        - \tenuto
                        [
                        \slurDashed
                        \revert Staff.Stem.stemlet-length
                        c'16
                        \ppp
                        ]
                        (
                        \boxed-markup "FB, MST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [
                        bf16
                        fs16
                        \revert Staff.Stem.stemlet-length
                        cs'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [
                        e16
                        )
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        b8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        \slurDashed
                        b16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        d'16
                        \revert Staff.Stem.stemlet-length
                        a16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g16
                        [
                        f'16
                        c'16
                        \revert Staff.Stem.stemlet-length
                        ef16
                        )
                        ]
                        \slurSolid
                        g4
                        \p
                        - \tenuto
                        ~
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        g16
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8.
                        - \tenuto
                        ~
                        ]
                        a,4
                        \override Staff.Stem.stemlet-length = 0.75
                        a8.
                        - \tenuto
                        [
                        \revert Staff.Stem.stemlet-length
                        g16
                        - \tenuto
                        ~
                        ]
                        g4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g8
                        [
                        \slurDashed
                        bf16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        \revert Staff.Stem.stemlet-length
                        fs'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        [
                        af16
                        e'16
                        \revert Staff.Stem.stemlet-length
                        b16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        )
                        [
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        f'8.
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        g'16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'8
                        [
                        \revert Staff.Stem.stemlet-length
                        d8
                        - \tenuto
                        ~
                        ]
                        d4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d16
                        [
                        \slurDashed
                        a16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        g16
                        \revert Staff.Stem.stemlet-length
                        f'16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [
                        ef'16
                        )
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        ef8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        ef8.
                        [
                        \slurDashed
                        \revert Staff.Stem.stemlet-length
                        bf16
                        \ppp
                        ]
                        (
                        \boxed-markup "FB, MST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'16
                        [
                        cs'16
                        )
                        \slurSolid
                        \revert Staff.Stem.stemlet-length
                        f8
                        \p
                        - \tenuto
                        ~
                        ]
                        \boxed-markup "NB, Ord." 1
                        f4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        f16
                        [
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        - \tenuto
                        ]
                        c4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c8.
                        [
                        \revert Staff.Stem.stemlet-length
                        f'16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8
                        [
                        \slurDashed
                        af16
                        \ppp
                        (
                        \boxed-markup "FB, MST" 1
                        \revert Staff.Stem.stemlet-length
                        e'16
                        )
                        ]
                        \slurSolid
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { pno. }
                        \override Staff.Stem.stemlet-length = 0.75
                        e'8.
                        \p
                        - \tenuto
                        _ \markup \italic { Dolcissimo }
                        [
                        \ottava 2
                        \revert Staff.Stem.stemlet-length
                        cs''''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        b''''16
                        [
                        fs''''16
                        a'''16
                        \revert Staff.Stem.stemlet-length
                        e''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''''16
                        [
                        g''''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        d''8
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        ef''16
                        - \tenuto
                        ~
                        ]
                        ef''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        [
                        \revert Staff.Stem.stemlet-length
                        d''8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'''8.
                        - \tenuto
                        ~
                        ]
                        cs'''4
                        \ottava 2
                        \override Staff.Stem.stemlet-length = 0.75
                        d''''16
                        \ppp
                        [
                        \(
                        bf''''16
                        f''''16
                        \revert Staff.Stem.stemlet-length
                        af''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''''16
                        [
                        cs''''16
                        b''''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        c'''16
                        \p
                        - \tenuto
                        ~
                        ]
                        c'''4
                        g''4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        [
                        \revert Staff.Stem.stemlet-length
                        a'8.
                        - \tenuto
                        ]
                        af''4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af''8.
                        [
                        \ottava 2
                        \revert Staff.Stem.stemlet-length
                        fs''''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        a''''16
                        [
                        e''''16
                        c''''16
                        \revert Staff.Stem.stemlet-length
                        g''''16
                        \)
                        ]
                        \ottava 0
                        bf''4
                        \p
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        [
                        \ottava 2
                        d''''16
                        \ppp
                        \(
                        bf''''16
                        \revert Staff.Stem.stemlet-length
                        f''''16
                        \)
                        ]
                        \ottava 0
                        b''4
                        \p
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        c''16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        [
                        \revert Staff.Stem.stemlet-length
                        fs''8
                        - \tenuto
                        ~
                        ]
                        fs''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''16
                        [
                        \revert Staff.Stem.stemlet-length
                        g'8.
                        - \tenuto
                        ]
                        \ottava 2
                        \override Staff.Stem.stemlet-length = 0.75
                        af''''16
                        \ppp
                        [
                        \(
                        ef''''16
                        cs''''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        f''16
                        \p
                        - \tenuto
                        ~
                        ]
                        f''4
                        d'''4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'''16
                        - \tenuto
                        ~
                        ]
                        cs'''4
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8.
                        - \tenuto
                        [
                        \ottava 2
                        \revert Staff.Stem.stemlet-length
                        b''''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''''16
                        [
                        a''''16
                        e''''16
                        \revert Staff.Stem.stemlet-length
                        c''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        d''''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        bf'8
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        [
                        \ottava 2
                        bf''''16
                        \ppp
                        \(
                        f''''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''''16
                        [
                        cs''''16
                        b'''16
                        \revert Staff.Stem.stemlet-length
                        fs'''16
                        \)
                        ]
                        \ottava 0
                        af''4
                        \p
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af''16
                        [
                        \revert Staff.Stem.stemlet-length
                        a''8.
                        - \tenuto
                        ~
                        ]
                        a''4
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8.
                        - \tenuto
                        [
                        \revert Staff.Stem.stemlet-length
                        e''16
                        - \tenuto
                        ~
                        ]
                        e''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e''8
                        [
                        \ottava 2
                        a''''16
                        \ppp
                        \(
                        \revert Staff.Stem.stemlet-length
                        e''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''''16
                        [
                        g''''16
                        d''''16
                        \revert Staff.Stem.stemlet-length
                        bf'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f'''16
                        \)
                        [
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        ef''8.
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        [
                        \revert Staff.Stem.stemlet-length
                        b''8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'''16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'''8
                        [
                        \revert Staff.Stem.stemlet-length
                        c'''8
                        - \tenuto
                        ~
                        ]
                        c'''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''16
                        [
                        \ottava 2
                        af'''16
                        \ppp
                        \(
                        ef''''16
                        \revert Staff.Stem.stemlet-length
                        cs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''16
                        [
                        fs'''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        fs''8
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''8.
                        [
                        \ottava 2
                        \revert Staff.Stem.stemlet-length
                        a''''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        e''''16
                        [
                        c'''''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        g''8
                        \p
                        - \tenuto
                        ~
                        ]
                        g''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        [
                        \revert Staff.Stem.stemlet-length
                        af'8.
                        - \tenuto
                        ]
                        c''4
                        - \tenuto
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \ottava 2
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''16
                        \ppp
                        [
                        \(
                        bf'''16
                        f'''16
                        \revert Staff.Stem.stemlet-length
                        cs'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''16
                        [
                        ef'''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        fs'16
                        - \tenuto
                        ~
                        ]
                        fs'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'8
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        f8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f16
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        a'8.
                        - \tenuto
                        ~
                        ]
                        a'4
                        \ottava 2
                        \override Staff.Stem.stemlet-length = 0.75
                        b''16
                        \ppp
                        [
                        \(
                        fs'''16
                        a'''16
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''16
                        [
                        c''''16
                        g'''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        fs'16
                        \p
                        - \tenuto
                        ~
                        ]
                        fs'4
                        \clef "bass"
                        cs'4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        [
                        \revert Staff.Stem.stemlet-length
                        af8.
                        - \tenuto
                        ]
                        e4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e8.
                        [
                        \ottava 2
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        bf'''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        f'''16
                        [
                        cs'''16
                        af''16
                        \revert Staff.Stem.stemlet-length
                        ef'''16
                        \)
                        ]
                        \ottava 0
                        a'4
                        \p
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        [
                        \ottava 2
                        b'''16
                        \ppp
                        \(
                        fs'''16
                        \revert Staff.Stem.stemlet-length
                        a'''16
                        \)
                        ]
                        \ottava 0
                        c''4
                        \p
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8.
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        ef16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef8
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        g'8
                        - \tenuto
                        ~
                        ]
                        g'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        [
                        \revert Staff.Stem.stemlet-length
                        b8.
                        - \tenuto
                        ]
                        \ottava 2
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''16
                        \ppp
                        [
                        \(
                        d''''16
                        c'''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        e'16
                        \p
                        - \tenuto
                        ~
                        ]
                        e'4
                        d'4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8.
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        b16
                        - \tenuto
                        ~
                        ]
                        b4
                        \override Staff.Stem.stemlet-length = 0.75
                        fs8.
                        - \tenuto
                        [
                        \ottava 2
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        g'''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'''16
                        [
                        f''''16
                        cs''''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        [
                        b'''16
                        \)
                        \ottava 0
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        cs8
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs16
                        [
                        \ottava 2
                        \clef "treble"
                        fs'''16
                        \ppp
                        \(
                        a'''16
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''16
                        [
                        c''''16
                        g'''16
                        \revert Staff.Stem.stemlet-length
                        bf''16
                        \)
                        ]
                        \ottava 0
                        g'4
                        \p
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf'8.
                        - \tenuto
                        ~
                        ]
                        bf'4
                        \override Staff.Stem.stemlet-length = 0.75
                        a8.
                        - \tenuto
                        [
                        \revert Staff.Stem.stemlet-length
                        f'16
                        - \tenuto
                        ~
                        ]
                        f'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8
                        [
                        \ottava 2
                        f'''16
                        \ppp
                        \(
                        \revert Staff.Stem.stemlet-length
                        cs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''16
                        [
                        ef'''16
                        b''16
                        \revert Staff.Stem.stemlet-length
                        fs'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a'''16
                        \)
                        [
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        [
                        \revert Staff.Stem.stemlet-length
                        f'8
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8.
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        e16
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e8
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        af'8
                        - \tenuto
                        ~
                        ]
                        af'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af'16
                        [
                        \ottava 2
                        e'''16
                        \ppp
                        \(
                        d'''16
                        \revert Staff.Stem.stemlet-length
                        c''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''16
                        [
                        bf''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        c'8
                        \p
                        - \tenuto
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        [
                        \ottava 2
                        \revert Staff.Stem.stemlet-length
                        f'''16
                        \ppp
                        ]
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        cs''''16
                        [
                        af'''16
                        \)
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        \p
                        - \tenuto
                        ~
                        ]
                        ef'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        g8.
                        - \tenuto
                        ]
                        cs'4
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'8.
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        ef'''16
                        \ppp
                        ]
                    }
                }
            >>
        >>
    >>
}
