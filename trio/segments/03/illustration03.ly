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
            \time 5/4
            s1 * 5/4
            \boxed-markup "Skyward, {diagonal moves} (i)" 1.5
            \time 5/4
            s1 * 5/4
            \time 5/4
            s1 * 5/4
            \time 3/4
            s1 * 3/4
            \time 3/4
            s1 * 3/4
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
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
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''32
                        \fff
                        - \accent
                        ^ \markup 0
                        - \tweak circled-tip ##t
                        \>
                        [
                        b'''32
                        ^ \markup 1
                        b'''32
                        ^ \markup 2
                        \revert Staff.Stem.stemlet-length
                        b'''32
                        ^ \markup 3
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b'''32
                            ^ \markup 4
                            [
                            b'''32
                            ^ \markup 5
                            b'''32
                            ^ \markup 6
                            b'''32
                            ^ \markup 7
                            \revert Staff.Stem.stemlet-length
                            b'''32
                            ^ \markup 8
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''32
                        ^ \markup 9
                        [
                        b'''32
                        ^ \markup 10
                        b'''32
                        ^ \markup 11
                        \revert Staff.Stem.stemlet-length
                        b'''32
                        ^ \markup 12
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b'''32
                            ^ \markup 13
                            [
                            b'''32
                            ^ \markup 14
                            b'''32
                            ^ \markup 15
                            b'''32
                            ^ \markup 16
                            \revert Staff.Stem.stemlet-length
                            b'''32
                            ^ \markup 17
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b'''16
                            ^ \markup 18
                            [
                            b'''16
                            ^ \markup 19
                            b'''16
                            ^ \markup 20
                            b'''16
                            ^ \markup 21
                            b'''16
                            ^ \markup 22
                            \revert Staff.Stem.stemlet-length
                            b'''16
                            ^ \markup 23
                            ]
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b'''32
                            ^ \markup 24
                            [
                            b'''32
                            ^ \markup 25
                            b'''32
                            ^ \markup 26
                            b'''32
                            ^ \markup 27
                            \revert Staff.Stem.stemlet-length
                            b'''32
                            ^ \markup 28
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''16
                        ^ \markup 29
                        [
                        \revert Staff.Stem.stemlet-length
                        b'''16
                        ^ \markup 30
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''16
                        ^ \markup 31
                        [
                        b'''16
                        ^ \markup 32
                        b'''16
                        ^ \markup 33
                        \revert Staff.Stem.stemlet-length
                        b'''16
                        ^ \markup 34
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b'''16
                            ^ \markup 35
                            [
                            b'''16
                            ^ \markup 36
                            b'''16
                            ^ \markup 37
                            b'''16
                            ^ \markup 38
                            \revert Staff.Stem.stemlet-length
                            b'''16
                            ^ \markup 39
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        a''32
                        ^ \markup 40
                        [
                        a''32
                        ^ \markup 41
                        a''32
                        ^ \markup 42
                        \revert Staff.Stem.stemlet-length
                        a''32
                        ^ \markup 43
                        ]
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a''8
                            ^ \markup 44
                            [
                            a''8
                            ^ \markup 45
                            \revert Staff.Stem.stemlet-length
                            a''8
                            ^ \markup 46
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        a''16
                        ^ \markup 47
                        [
                        a''16
                        ^ \markup 48
                        a''16
                        ^ \markup 49
                        \revert Staff.Stem.stemlet-length
                        a''16
                        ^ \markup 50
                        ]
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a''8
                            ^ \markup 51
                            [
                            a''8
                            ^ \markup 52
                            \revert Staff.Stem.stemlet-length
                            a''8
                            ^ \markup 53
                            ]
                        }
                        \override TupletNumber.text = \markup \italic { 4:5 }
                        \times 15/12
                        {
                            a''4
                            ^ \markup 54
                            a''4
                            ^ \markup 55
                        }
                        \revert TupletNumber.text
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e'''8
                            ^ \markup 56
                            [
                            e'''8
                            ^ \markup 57
                            \revert Staff.Stem.stemlet-length
                            e'''8
                            ^ \markup 58
                            ]
                        }
                        e'''8
                        ^ \markup 59
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''16
                        ^ \markup 60
                        [
                        \revert Staff.Stem.stemlet-length
                        e'''8.
                        \!
                        ^ \markup 61
                        ]
                        r2.
                        ^ \markup 62
                        r2.
                        ^ \markup 63
                        r8
                        ^ \markup 64
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "treble"
                        s1 * 3/4
                        ^ \markup 0
                        s1 * 1/2
                        ^ \markup 1
                        s1 * 3/4
                        ^ \markup 2
                        s1 * 1/2
                        ^ \markup 3
                        s1 * 3/4
                        ^ \markup 4
                        s1 * 1/2
                        ^ \markup 5
                        r2.
                        ^ \markup 6
                        r2.
                        ^ \markup 7
                        r8
                        ^ \markup 8
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { vc. }
                        r1 * 3/4
                        ^ \markup 0
                        r1 * 1/2
                        ^ \markup 1
                        r1 * 3/4
                        ^ \markup 2
                        r1 * 1/2
                        ^ \markup 3
                        r1 * 3/4
                        ^ \markup 4
                        r1 * 1/2
                        ^ \markup 5
                        r1 * 3/4
                        ^ \markup 6
                        r1 * 3/4
                        ^ \markup 7
                        r1 * 1/8
                        ^ \markup 8
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        a'''32
                        \fff
                        - \accent
                        ^ \markup 0
                        - \tweak circled-tip ##t
                        \>
                        [
                        cs''''32
                        ^ \markup 1
                        aqs'''32
                        ^ \markup 2
                        \revert Staff.Stem.stemlet-length
                        b'''32
                        ^ \markup 3
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            aqf'''32
                            ^ \markup 4
                            [
                            dqf''''32
                            ^ \markup 5
                            a'''32
                            ^ \markup 6
                            cs''''32
                            ^ \markup 7
                            \revert Staff.Stem.stemlet-length
                            aqs'''32
                            ^ \markup 8
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''32
                        ^ \markup 9
                        [
                        aqf'''32
                        ^ \markup 10
                        dqf''''32
                        ^ \markup 11
                        \revert Staff.Stem.stemlet-length
                        a'''32
                        ^ \markup 12
                        ]
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            cs''''16
                            ^ \markup 13
                            [
                            aqs'''16
                            ^ \markup 14
                            \revert Staff.Stem.stemlet-length
                            b'''16
                            ^ \markup 15
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf'''8
                        ^ \markup 16
                        [
                        \revert Staff.Stem.stemlet-length
                        dqf''''8
                        ^ \markup 17
                        ]
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a'''32
                            ^ \markup 18
                            [
                            cs''''32
                            ^ \markup 19
                            aqs'''32
                            ^ \markup 20
                            b'''32
                            ^ \markup 21
                            aqf'''32
                            ^ \markup 22
                            dqf''''32
                            ^ \markup 23
                            \revert Staff.Stem.stemlet-length
                            a'''32
                            ^ \markup 24
                            ]
                        }
                        cs''''8
                        ^ \markup 25
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        cs''''16
                        ^ \markup 26
                        [
                        \revert Staff.Stem.stemlet-length
                        aqs'''8.
                        ^ \markup 27
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b'''16
                            ^ \markup 28
                            [
                            aqf'''16
                            ^ \markup 29
                            dqf''''16
                            ^ \markup 30
                            a'''16
                            ^ \markup 31
                            cs''''16
                            ^ \markup 32
                            aqs'''16
                            ^ \markup 33
                            \revert Staff.Stem.stemlet-length
                            b'''16
                            ^ \markup 34
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g''32
                            ^ \markup 35
                            [
                            b''32
                            ^ \markup 36
                            gqs''32
                            ^ \markup 37
                            a''32
                            ^ \markup 38
                            gqf''32
                            ^ \markup 39
                            bqs''32
                            ^ \markup 40
                            \revert Staff.Stem.stemlet-length
                            g''32
                            ^ \markup 41
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b''16
                            ^ \markup 42
                            [
                            gqs''16
                            ^ \markup 43
                            a''16
                            ^ \markup 44
                            gqf''16
                            ^ \markup 45
                            bqs''16
                            ^ \markup 46
                            \revert Staff.Stem.stemlet-length
                            g''16
                            ^ \markup 47
                            ]
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b''16
                            ^ \markup 48
                            [
                            gqs''16
                            ^ \markup 49
                            a''16
                            ^ \markup 50
                            gqf''16
                            ^ \markup 51
                            \revert Staff.Stem.stemlet-length
                            bqs''16
                            ^ \markup 52
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        ^ \markup 53
                        [
                        b''16
                        ^ \markup 54
                        gqs''16
                        ^ \markup 55
                        \revert Staff.Stem.stemlet-length
                        a''16
                        ^ \markup 56
                        ]
                        \override TupletNumber.text = \markup \italic { 6:5 }
                        \times 15/18
                        {
                            gqf''4
                            ^ \markup 57
                            bqs''4
                            ^ \markup 58
                            g''4
                            ^ \markup 59
                        }
                        \revert TupletNumber.text
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            d'''16
                            ^ \markup 60
                            [
                            fs'''16
                            ^ \markup 61
                            dqs'''16
                            ^ \markup 62
                            e'''16
                            ^ \markup 63
                            dqf'''16
                            ^ \markup 64
                            \revert Staff.Stem.stemlet-length
                            gqf'''16
                            ^ \markup 65
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            d'''16
                            ^ \markup 66
                            [
                            fs'''16
                            ^ \markup 67
                            dqs'''16
                            ^ \markup 68
                            e'''16
                            ^ \markup 69
                            \revert Staff.Stem.stemlet-length
                            dqf'''16
                            ^ \markup 70
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        gqf'''32
                        ^ \markup 71
                        [
                        d'''32
                        ^ \markup 72
                        fs'''32
                        ^ \markup 73
                        \revert Staff.Stem.stemlet-length
                        dqs'''32
                        ^ \markup 74
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e'''16
                            ^ \markup 75
                            [
                            dqf'''16
                            ^ \markup 76
                            gqf'''16
                            ^ \markup 77
                            d'''16
                            ^ \markup 78
                            \revert Staff.Stem.stemlet-length
                            fs'''16
                            ^ \markup 79
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        dqs'''16.
                        ^ \markup 80
                        [
                        \revert Staff.Stem.stemlet-length
                        e'''32
                        ^ \markup 81
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''16
                        ^ \markup 82
                        [
                        dqf'''16
                        ^ \markup 83
                        ~
                        dqf'''32
                        ^ \markup 84
                        \revert Staff.Stem.stemlet-length
                        gqf'''16.
                        ^ \markup 85
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            ^ \markup 86
                            [
                            e''8
                            ^ \markup 87
                            cqs''8
                            ^ \markup 88
                            d''8
                            ^ \markup 89
                            bqs'8
                            ^ \markup 90
                            eqs''8
                            ^ \markup 91
                            \revert Staff.Stem.stemlet-length
                            c''8
                            ^ \markup 92
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e''32
                            ^ \markup 93
                            [
                            cqs''32
                            ^ \markup 94
                            d''32
                            ^ \markup 95
                            bqs'32
                            ^ \markup 96
                            eqs''32
                            ^ \markup 97
                            \revert Staff.Stem.stemlet-length
                            c''32
                            \!
                            ^ \markup 98
                            ]
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { cb. }
                        r1 * 3/4
                        ^ \markup 0
                        r1 * 1/2
                        ^ \markup 1
                        r1 * 3/4
                        ^ \markup 2
                        r1 * 1/2
                        ^ \markup 3
                        r1 * 3/4
                        ^ \markup 4
                        r1 * 1/2
                        ^ \markup 5
                        r1 * 3/4
                        ^ \markup 6
                        r1 * 3/4
                        ^ \markup 7
                        r1 * 1/8
                        ^ \markup 8
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        \times 4/7
                        {
                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            <g a>32
                            \fff
                            - \accent
                            ^ \markup 0
                            - \tweak circled-tip ##t
                            \>
                            [
                            <gqf g>32
                            ^ \markup 1
                            <g bqf>32
                            ^ \markup 2
                            <g af>32
                            ^ \markup 3
                            <g a>32
                            ^ \markup 4
                            <gqf g>32
                            ^ \markup 5
                            \revert Staff.Stem.stemlet-length
                            <g bqf>32
                            ^ \markup 6
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <g af>32
                            ^ \markup 7
                            [
                            <g a>32
                            ^ \markup 8
                            <gqf g>32
                            ^ \markup 9
                            <g bqf>32
                            ^ \markup 10
                            <g af>32
                            ^ \markup 11
                            \revert Staff.Stem.stemlet-length
                            <g a>32
                            ^ \markup 12
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <gqf g>16
                            ^ \markup 13
                            [
                            <g bqf>16
                            ^ \markup 14
                            <d e>16
                            ^ \markup 15
                            <dqf d>16
                            ^ \markup 16
                            \revert Staff.Stem.stemlet-length
                            <d fqs>16
                            ^ \markup 17
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        <d ef>16.
                        ^ \markup 18
                        [
                        \revert Staff.Stem.stemlet-length
                        <d e>32
                        ^ \markup 19
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <d e>16
                        ^ \markup 20
                        [
                        <dqf d>16
                        ^ \markup 21
                        ~
                        <dqf d>32
                        ^ \markup 22
                        \revert Staff.Stem.stemlet-length
                        <d fqs>16.
                        ^ \markup 23
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <d ef>32
                            ^ \markup 24
                            [
                            <d e>32
                            ^ \markup 25
                            <dqf d>32
                            ^ \markup 26
                            <d fqs>32
                            ^ \markup 27
                            \revert Staff.Stem.stemlet-length
                            <d ef>32
                            ^ \markup 28
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        <d e>32
                        ^ \markup 29
                        [
                        <dqf d>32
                        ^ \markup 30
                        <d fqs>32
                        ^ \markup 31
                        \revert Staff.Stem.stemlet-length
                        <d ef>32
                        ^ \markup 32
                        ]
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            <d e>8
                            ^ \markup 33
                            [
                            <dqf d>8
                            ^ \markup 34
                            \revert Staff.Stem.stemlet-length
                            <d fqs>8
                            ^ \markup 35
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        <a, b,>8.
                        ^ \markup 36
                        [
                        \revert Staff.Stem.stemlet-length
                        <aqf, a,>16
                        ^ \markup 37
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <aqf, a,>8
                        ^ \markup 38
                        [
                        \revert Staff.Stem.stemlet-length
                        <a, cqs>8
                        ^ \markup 39
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <a, cqs>16
                        ^ \markup 40
                        [
                        \revert Staff.Stem.stemlet-length
                        <a, bf,>8.
                        ^ \markup 41
                        ]
                        r4
                        \!
                        ^ \markup 42
                        r2.
                        ^ \markup 43
                        r2
                        ^ \markup 44
                        r2.
                        ^ \markup 45
                        r2.
                        ^ \markup 46
                        r8
                        ^ \markup 47
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>
}
