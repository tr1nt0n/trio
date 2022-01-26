\version "2.20.0"
\language "english"
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=69
            \time 5/4
            s1 * 5/4
            \boxed-markup "in th posession of nymphs and naiads" 1.5
            \time 9/8
            s1 * 9/8
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 11/8
            s1 * 11/8
            \time 12/8
            s1 * 3/2
            \time 7/8
            s1 * 7/8
            \time 13/8
            s1 * 13/8
            \time 3/8
            s1 * 3/8
            \bar "||"
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { pno. }
                        r1 * 5/4
                        ^ \markup 0
                        r1 * 9/8
                        ^ \markup 1
                        r1 * 1/4
                        ^ \markup 2
                        r1 * 3/2
                        ^ \markup 3
                        r1 * 11/8
                        ^ \markup 4
                        r1 * 3/2
                        ^ \markup 5
                        r1 * 7/8
                        ^ \markup 6
                        r1 * 13/8
                        ^ \markup 7
                        r1 * 3/8
                        ^ \markup 8
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        r1 * 5/4
                        ^ \markup 0
                        r1 * 9/8
                        ^ \markup 1
                        r1 * 1/4
                        ^ \markup 2
                        r1 * 3/2
                        ^ \markup 3
                        r1 * 11/8
                        ^ \markup 4
                        r1 * 3/2
                        ^ \markup 5
                        r1 * 7/8
                        ^ \markup 6
                        r1 * 13/8
                        ^ \markup 7
                        r1 * 3/8
                        ^ \markup 8
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \repeat tremolo 4 {
                            \set PianoStaff.shortInstrumentName =
                            \markup { vc. }
                            \tweak Accidental.transparent ##t
                            d'16
                            ^ \markup 0
                            \tweak Accidental.transparent ##t
                            bf16
                            ^ \markup 1
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'32
                            ^ \markup 2
                            \tweak Accidental.transparent ##t
                            bf32
                            ^ \markup 3
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'64.
                            ^ \markup 4
                            \tweak Accidental.transparent ##t
                            bf64.
                            ^ \markup 5
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'32
                            ^ \markup 6
                            \tweak Accidental.transparent ##t
                            bf32
                            ^ \markup 7
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'128
                            ^ \markup 8
                            \tweak Accidental.transparent ##t
                            bf128
                            ^ \markup 9
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'64.
                            ^ \markup 10
                            \tweak Accidental.transparent ##t
                            d'64.
                            ^ \markup 11
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'32
                            ^ \markup 12
                            \tweak Accidental.transparent ##t
                            d'32
                            ^ \markup 13
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'16
                            ^ \markup 14
                            \tweak Accidental.transparent ##t
                            d'16
                            ^ \markup 15
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'64.
                            ^ \markup 16
                            \tweak Accidental.transparent ##t
                            d'64.
                            ^ \markup 17
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf64
                            ^ \markup 18
                            \tweak Accidental.transparent ##t
                            g64
                            ^ \markup 19
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf64
                            ^ \markup 20
                            \tweak Accidental.transparent ##t
                            g64
                            ^ \markup 21
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'8.
                            ^ \markup 22
                            \tweak Accidental.transparent ##t
                            d'8.
                            ^ \markup 23
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf8
                            ^ \markup 24
                            \tweak Accidental.transparent ##t
                            g8
                            ^ \markup 25
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf32.
                            ^ \markup 26
                            \tweak Accidental.transparent ##t
                            g32.
                            ^ \markup 27
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'16
                            ^ \markup 28
                            \tweak Accidental.transparent ##t
                            bf16
                            ^ \markup 29
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'64
                            ^ \markup 30
                            \tweak Accidental.transparent ##t
                            bf64
                            ^ \markup 31
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'32.
                            ^ \markup 32
                            \tweak Accidental.transparent ##t
                            bf32.
                            ^ \markup 33
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'32..
                            ^ \markup 34
                            \tweak Accidental.transparent ##t
                            bf32..
                            ^ \markup 35
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'128
                            ^ \markup 36
                            \tweak Accidental.transparent ##t
                            bf128
                            ^ \markup 37
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'64
                            ^ \markup 38
                            \tweak Accidental.transparent ##t
                            d'64
                            ^ \markup 39
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'32
                            ^ \markup 40
                            \tweak Accidental.transparent ##t
                            d'32
                            ^ \markup 41
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            f'16
                            ^ \markup 42
                            \tweak Accidental.transparent ##t
                            d'16
                            ^ \markup 43
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf16
                            ^ \markup 44
                            \tweak Accidental.transparent ##t
                            g16
                            ^ \markup 45
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf16
                            ^ \markup 46
                            \tweak Accidental.transparent ##t
                            g16
                            ^ \markup 47
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf64
                            ^ \markup 48
                            \tweak Accidental.transparent ##t
                            g64
                            ^ \markup 49
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf32
                            ^ \markup 50
                            \tweak Accidental.transparent ##t
                            g32
                            ^ \markup 51
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf32
                            ^ \markup 52
                            \tweak Accidental.transparent ##t
                            g32
                            ^ \markup 53
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'64
                            ^ \markup 54
                            \tweak Accidental.transparent ##t
                            bf64
                            ^ \markup 55
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'32
                            ^ \markup 56
                            \tweak Accidental.transparent ##t
                            bf32
                            ^ \markup 57
                        }
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        \times 4/5
                        {
                            \set suggestAccidentals = ##t
                            \clef "bass"
                            <af, ef>2
                            ^ \markup 0
                            \glissando
                            \clef "treble"
                            <g'' d'''>8
                            ^ \markup 1
                            \glissando
                        }
                        \times 2/3
                        {
                            \clef "bass"
                            <b, fs>16
                            ^ \markup 2
                            [
                            \glissando
                            \clef "treble"
                            <g'' d'''>16
                            ^ \markup 3
                            ]
                            \glissando
                            \clef "bass"
                            <g d'>4
                            ^ \markup 4
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \clef "treble"
                            <g'' d'''>32
                            ^ \markup 5
                            [
                            \glissando
                            \clef "bass"
                            <af, ef>32
                            ^ \markup 6
                            \glissando
                            <c g>32
                            ^ \markup 7
                            \glissando
                            \clef "treble"
                            <g'' d'''>8
                            ^ \markup 8
                            ]
                            \glissando
                        }
                        \override TupletNumber.text = \markup \italic { 6:5 }
                        \times 15/18
                        {
                            \clef "bass"
                            <af, ef>8
                            ^ \markup 9
                            [
                            \glissando
                            <d a>8
                            ^ \markup 10
                            \glissando
                            <af, ef>8
                            ^ \markup 11
                            ]
                        }
                        \revert TupletNumber.text
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            <ef bf>8.
                            ^ \markup 12
                            [
                            \glissando
                            \clef "treble"
                            <d''' a'''>32
                            ^ \markup 13
                            ]
                            \glissando
                        }
                        \times 4/5
                        {
                            \clef "bass"
                            <fs cs'>4
                            ^ \markup 14
                            \glissando
                            \clef "treble"
                            <d''' a'''>16
                            ^ \markup 15
                            \glissando
                        }
                        \times 2/3
                        {
                            \clef "bass"
                            <d' a'>8
                            ^ \markup 16
                            [
                            \glissando
                            \clef "treble"
                            <d''' a'''>8
                            ^ \markup 17
                            ]
                            \glissando
                            \clef "bass"
                            <ef bf>2
                            ^ \markup 18
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            <g d'>32
                            ^ \markup 19
                            [
                            \glissando
                            \clef "treble"
                            <d''' a'''>32
                            ^ \markup 20
                            \glissando
                            \clef "bass"
                            <ef bf>32
                            ^ \markup 21
                            \glissando
                            <a e'>8
                            ^ \markup 22
                            ]
                        }
                        \times 2/3
                        {
                            <cs, af,>16
                            ^ \markup 23
                            [
                            \glissando
                            \clef "treble"
                            <c'' g''>16
                            ^ \markup 24
                            \glissando
                            \clef "bass"
                            <e, b,>16
                            ^ \markup 25
                            ]
                            \glissando
                        }
                        \times 4/7
                        {
                            \clef "treble"
                            <c'' g''>8.
                            ^ \markup 26
                            [
                            \glissando
                            \clef "bass"
                            <c g>32
                            ^ \markup 27
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/8
                        {
                            <ef bf>4
                            ^ \markup 28
                            \glissando
                            \clef "treble"
                            <d''' a'''>1..
                            ^ \markup 29
                        }
                        \times 4/7
                        {
                            <c'' g''>4
                            ^ \markup 30
                            \glissando
                            \clef "bass"
                            <cs, af,>1.
                            ^ \markup 31
                            \glissando
                        }
                        <f, c>16
                        ^ \markup 32
                        [
                        \glissando
                        \clef "treble"
                        <c'' g''>16
                        ^ \markup 33
                        ~
                        ]
                        <c'' g''>4
                        ^ \markup 34
                        <g'' d'''>8
                        ^ \markup 35
                        \glissando
                        \clef "bass"
                        <b, fs>4
                        ^ \markup 36
                        ~
                        \glissando
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        <b, fs>4
                        ^ \markup 37
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            \clef "treble"
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            <g'' d'''>8
                            ^ \markup 38
                            [
                            \glissando
                            \clef "bass"
                            <g d'>8
                            ^ \markup 39
                            ]
                            \glissando
                            \clef "treble"
                            <g'' d'''>4.
                            ^ \markup 40
                            \glissando
                        }
                        \clef "bass"
                        <af, ef>16.
                        ^ \markup 41
                        [
                        \glissando
                        \clef "bass"
                        <c g>32
                        ^ \markup 42
                        ]
                        \glissando
                        \clef "treble"
                        <g'' d'''>32
                        ^ \markup 43
                        [
                        \glissando
                        \clef "bass"
                        <af, ef>32
                        ^ \markup 44
                        \glissando
                        <d a>16
                        ^ \markup 45
                        \glissando
                        \clef "bass"
                        <af, ef>16
                        ^ \markup 46
                        \glissando
                        \clef "treble"
                        <g'' d'''>16
                        ^ \markup 47
                        \glissando
                        \clef "bass"
                        <b, fs>16
                        ^ \markup 48
                        \glissando
                        \clef "treble"
                        <g'' d'''>32.
                        ^ \markup 49
                        \glissando
                        \clef "bass"
                        <g d'>128
                        ^ \markup 50
                        \glissando
                        \clef "treble"
                        <g'' d'''>128
                        ^ \markup 51
                        ]
                        \clef "bass"
                        <fs cs'>64
                        ^ \markup 52
                        [
                        \glissando
                        \clef "treble"
                        <d''' a'''>16..
                        ^ \markup 53
                        ]
                        \glissando
                        \times 4/7
                        {
                            \clef "bass"
                            <d' a'>16
                            ^ \markup 54
                            \glissando
                            \clef "treble"
                            <d''' a'''>4.
                            ^ \markup 55
                            \glissando
                        }
                        \times 4/6
                        {
                            \clef "bass"
                            <ef bf>8
                            ^ \markup 56
                            \glissando
                            <g d'>2
                            ^ \markup 57
                            ~
                            <g d'>8
                            ^ \markup 58
                        }
                        \times 8/13
                        {
                            <cs, af,>16
                            ^ \markup 59
                            [
                            \glissando
                            <g, d>16
                            ^ \markup 60
                            \glissando
                            <cs, af,>16
                            ^ \markup 61
                            \glissando
                            \clef "treble"
                            <c'' g''>16
                            ^ \markup 62
                            \glissando
                            \clef "bass"
                            <e, b,>16
                            ^ \markup 63
                            \glissando
                            \clef "treble"
                            <c'' g''>16
                            ^ \markup 64
                            \glissando
                            \clef "bass"
                            <c g>16
                            ^ \markup 65
                            \glissando
                            \clef "treble"
                            <c'' g''>16
                            ^ \markup 66
                            \glissando
                            \clef "bass"
                            <cs, af,>16
                            ^ \markup 67
                            \glissando
                            <f, c>16
                            ^ \markup 68
                            \glissando
                            \clef "treble"
                            <c'' g''>16
                            ^ \markup 69
                            \glissando
                            \clef "bass"
                            <cs, af,>16
                            ^ \markup 70
                            \glissando
                            <g, d>16
                            ^ \markup 71
                            ]
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6
                        {
                            <cs, af,>8
                            ^ \markup 72
                            [
                            \glissando
                            \clef "treble"
                            <c'' g''>8
                            ^ \markup 73
                            ]
                            \glissando
                            \clef "bass"
                            <e, b,>4.
                            ^ \markup 74
                            \glissando
                            \clef "treble"
                            <c'' g''>8
                            ^ \markup 75
                            \glissando
                        }
                        \times 4/7
                        {
                            \clef "bass"
                            <c g>16
                            ^ \markup 76
                            [
                            \glissando
                            \clef "treble"
                            <c'' g''>8.
                            ^ \markup 77
                            \glissando
                            \clef "bass"
                            <cs, af,>16
                            ^ \markup 78
                            \glissando
                            <f, c>8
                            ^ \markup 79
                            ]
                            \glissando
                        }
                        \times 8/13
                        {
                            \clef "treble"
                            <c'' g''>32
                            ^ \markup 80
                            [
                            \glissando
                            \clef "bass"
                            <cs, af,>32
                            ^ \markup 81
                            \glissando
                            <g, d>32
                            ^ \markup 82
                            \glissando
                            <cs, af,>32
                            ^ \markup 83
                            \glissando
                            \clef "treble"
                            <c'' g''>32
                            ^ \markup 84
                            \glissando
                            \clef "bass"
                            <e, b,>32
                            ^ \markup 85
                            \glissando
                            \clef "treble"
                            <c'' g''>32
                            ^ \markup 86
                            \glissando
                            \clef "bass"
                            <c g>32
                            ^ \markup 87
                            \glissando
                            \clef "treble"
                            <c'' g''>32
                            ^ \markup 88
                            \glissando
                            \clef "bass"
                            <cs, af,>32
                            ^ \markup 89
                            \glissando
                            <f, c>32
                            ^ \markup 90
                            \glissando
                            \clef "treble"
                            <c'' g''>32
                            ^ \markup 91
                            \glissando
                            \clef "bass"
                            <cs, af,>32
                            ^ \markup 92
                            ]
                        }
                        \times 2/3
                        {
                            <af, ef>32
                            ^ \markup 93
                            [
                            \glissando
                            <c g>32
                            ^ \markup 94
                            \glissando
                            \clef "treble"
                            <g'' d'''>16.
                            ^ \markup 95
                            \glissando
                            \clef "bass"
                            <af, ef>32
                            ^ \markup 96
                            ]
                            \glissando
                        }
                        \times 4/7
                        {
                            <d a>16
                            ^ \markup 97
                            [
                            \glissando
                            <af, ef>8.
                            ^ \markup 98
                            \glissando
                            \clef "treble"
                            <g'' d'''>16
                            ^ \markup 99
                            \glissando
                            \clef "bass"
                            <b, fs>8
                            ^ \markup 100
                            ]
                            \set suggestAccidentals = ##f
                        }
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        \repeat tremolo 4 {
                            \set PianoStaff.shortInstrumentName =
                            \markup { cb. }
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 0
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 1
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'128
                            ^ \markup 2
                            \tweak Accidental.transparent ##t
                            c'128
                            ^ \markup 3
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64.
                            ^ \markup 4
                            \tweak Accidental.transparent ##t
                            c'64.
                            ^ \markup 5
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 6
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 7
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 8
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 9
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64.
                            ^ \markup 10
                            \tweak Accidental.transparent ##t
                            c'64.
                            ^ \markup 11
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 12
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 13
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 14
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 15
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64.
                            ^ \markup 16
                            \tweak Accidental.transparent ##t
                            c'64.
                            ^ \markup 17
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 18
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 19
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'8.
                            ^ \markup 20
                            \tweak Accidental.transparent ##t
                            c'8.
                            ^ \markup 21
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32.
                            ^ \markup 22
                            \tweak Accidental.transparent ##t
                            c'32.
                            ^ \markup 23
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'8
                            ^ \markup 24
                            \tweak Accidental.transparent ##t
                            c'8
                            ^ \markup 25
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'128
                            ^ \markup 26
                            \tweak Accidental.transparent ##t
                            c'128
                            ^ \markup 27
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32..
                            ^ \markup 28
                            \tweak Accidental.transparent ##t
                            c'32..
                            ^ \markup 29
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32.
                            ^ \markup 30
                            \tweak Accidental.transparent ##t
                            c'32.
                            ^ \markup 31
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 32
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 33
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 34
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 35
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 36
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 37
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 38
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 39
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 40
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 41
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 42
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 43
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 44
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 45
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 46
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 47
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 48
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 49
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 50
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 51
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 52
                            \tweak Accidental.transparent ##t
                            c'32
                            ^ \markup 53
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 54
                            \tweak Accidental.transparent ##t
                            c'64
                            ^ \markup 55
                        }
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        \override TupletNumber.text = \markup \italic { 13:10 }
                        \times 30/39
                        {
                            \set suggestAccidentals = ##t
                            c'32
                            ^ \markup 0
                            [
                            c'32
                            ^ \markup 1
                            c'32
                            ^ \markup 2
                            c'32
                            ^ \markup 3
                            c'32
                            ^ \markup 4
                            c'32
                            ^ \markup 5
                            c'32
                            ^ \markup 6
                            c'32
                            ^ \markup 7
                            c'32
                            ^ \markup 8
                            c'32
                            ^ \markup 9
                            c'32
                            ^ \markup 10
                            c'32
                            ^ \markup 11
                            c'32
                            ^ \markup 12
                            ]
                        }
                        \revert TupletNumber.text
                        c'32
                        ^ \markup 13
                        [
                        c'32
                        ^ \markup 14
                        c'16.
                        ^ \markup 15
                        c'32
                        ^ \markup 16
                        ]
                        \times 4/7
                        {
                            c'16
                            ^ \markup 17
                            [
                            c'8.
                            ^ \markup 18
                            c'16
                            ^ \markup 19
                            c'8
                            ^ \markup 20
                            ]
                        }
                        \times 8/13
                        {
                            c'16
                            ^ \markup 21
                            [
                            c'16
                            ^ \markup 22
                            c'16
                            ^ \markup 23
                            c'16
                            ^ \markup 24
                            c'16
                            ^ \markup 25
                            c'16
                            ^ \markup 26
                            c'16
                            ^ \markup 27
                            c'16
                            ^ \markup 28
                            c'16
                            ^ \markup 29
                            c'16
                            ^ \markup 30
                            c'16
                            ^ \markup 31
                            c'16
                            ^ \markup 32
                            c'16
                            ^ \markup 33
                            ]
                        }
                        c'32
                        ^ \markup 34
                        [
                        c'32
                        ^ \markup 35
                        c'16
                        ^ \markup 36
                        ~
                        c'32
                        ^ \markup 37
                        c'32
                        ^ \markup 38
                        ]
                        \times 4/7
                        {
                            c'8
                            ^ \markup 39
                            c'4.
                            ^ \markup 40
                            c'8
                            ^ \markup 41
                            c'4
                            ^ \markup 42
                        }
                        \times 8/13
                        {
                            c'32
                            ^ \markup 43
                            [
                            c'32
                            ^ \markup 44
                            c'32
                            ^ \markup 45
                            c'32
                            ^ \markup 46
                            c'32
                            ^ \markup 47
                            c'32
                            ^ \markup 48
                            c'32
                            ^ \markup 49
                            c'32
                            ^ \markup 50
                            c'32
                            ^ \markup 51
                            c'32
                            ^ \markup 52
                            c'32
                            ^ \markup 53
                            c'32
                            ^ \markup 54
                            c'32
                            ^ \markup 55
                            ]
                        }
                        c'32
                        ^ \markup 56
                        [
                        c'32
                        ^ \markup 57
                        c'16.
                        ^ \markup 58
                        c'32
                        ^ \markup 59
                        ]
                        \times 4/7
                        {
                            c'16
                            ^ \markup 60
                            [
                            c'8.
                            ^ \markup 61
                            c'16
                            ^ \markup 62
                            c'8
                            ^ \markup 63
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c'1
                            ^ \markup 64
                            c'4
                            ^ \markup 65
                        }
                        c'16
                        ^ \markup 66
                        [
                        c'16
                        ^ \markup 67
                        ]
                        c'4
                        ^ \markup 68
                        \times 4/7
                        {
                            c'4
                            ^ \markup 69
                            c'4
                            ^ \markup 70
                            c'4
                            ^ \markup 71
                            c'1
                            ^ \markup 72
                        }
                        \times 2/3
                        {
                            c'32
                            ^ \markup 73
                            [
                            c'32
                            ^ \markup 74
                            c'32
                            ^ \markup 75
                            ]
                        }
                        c'16
                        ^ \markup 76
                        ~
                        c'4
                        ^ \markup 77
                        ~
                        c'16
                        ^ \markup 78
                        [
                        c'16
                        ^ \markup 79
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c'4
                            ^ \markup 80
                            c'16
                            ^ \markup 81
                        }
                        \override TupletNumber.text = \markup \italic { 6:5 }
                        \times 15/18
                        {
                            c'8
                            ^ \markup 82
                            [
                            c'8
                            ^ \markup 83
                            ]
                            c'2
                            ^ \markup 84
                        }
                        \revert TupletNumber.text
                        \times 4/7
                        {
                            c'8
                            ^ \markup 85
                            [
                            c'8
                            ^ \markup 86
                            c'8
                            ^ \markup 87
                            ]
                            c'2
                            ^ \markup 88
                        }
                        \times 2/3
                        {
                            c'8
                            ^ \markup 89
                            [
                            c'8
                            ^ \markup 90
                            c'8
                            ^ \markup 91
                            ]
                        }
                        \times 4/7
                        {
                            c'8.
                            ^ \markup 92
                            [
                            c'32
                            ^ \markup 93
                            ]
                        }
                        c'32
                        ^ \markup 94
                        [
                        c'8..
                        ^ \markup 95
                        ]
                        \times 4/7
                        {
                            c'16
                            ^ \markup 96
                            c'4.
                            ^ \markup 97
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/9
                        {
                            c'8.
                            ^ \markup 98
                            c'2...
                            ^ \markup 99
                        }
                        \times 4/5
                        {
                            c'8
                            ^ \markup 100
                            c'2
                            ^ \markup 101
                        }
                        \times 4/5
                        {
                            c'16
                            ^ \markup 102
                            [
                            c'16
                            ^ \markup 103
                            c'8.
                            ^ \markup 104
                            ]
                        }
                        \times 4/7
                        {
                            c'32.
                            ^ \markup 105
                            [
                            c'64
                            ^ \markup 106
                            c'64
                            ^ \markup 107
                            c'64
                            ^ \markup 108
                            c'32
                            ^ \markup 109
                            c'32
                            ^ \markup 110
                            c'32
                            ^ \markup 111
                            c'32
                            ^ \markup 112
                            ]
                            \set suggestAccidentals = ##f
                        }
                    }
                }
            >>
        >>
    >>
}
