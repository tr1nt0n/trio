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
            \tempo 4=47
            \time 9/4
            s1 * 9/4
            \boxed-markup "Matter, to Self-Organize" 0.5
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \tempo 8=138
            \time 1/8
            s1 * 1/8
            \time 3/8
            s1 * 3/8
            \time 1/4
            s1 * 1/4
            \time 1/8
            s1 * 1/8
            \time 3/8
            s1 * 3/8
            \time 11/8
            s1 * 11/8
            \time 1/4
            s1 * 1/4
            \time 1/8
            s1 * 1/8
            \time 3/8
            s1 * 3/8
            \time 11/8
            s1 * 11/8
            \time 9/8
            s1 * 9/8
            \time 7/8
            s1 * 7/8
            \time 1/4
            s1 * 1/4
            \time 1/8
            s1 * 1/8
            \time 5/8
            s1 * 5/8
            \time 1/8
            s1 * 1/8
            \tempo 4=47
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \time 7/4
            s1 * 7/4
            \tempo 4=105
            \time 9/4
            s1 * 9/4
            \tempo 4=130
            \time 9/4
            s1 * 9/4
            \time 7/4
            s1 * 7/4
            \time 6/4
            s1 * 3/2
            \time 5/4
            s1 * 5/4
            \time 2/4
            s1 * 1/2
            \tempo 4=60
            \time 5/4
            s1 * 5/4
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
                        r1.
                        ^ \markup 0
                        r2.
                        ^ \markup 1
                        \clef "bass"
                        <g,, b,, ef,>4
                        ^ \markup 2
                        r4
                        ^ \markup 3
                        <af, bf, cs>8
                        ^ \markup 4
                        ~
                        <af, bf, cs>4.
                        ^ \markup 5
                        r4
                        ^ \markup 6
                        \clef "treble"
                        <cs''' af''' bf''' cs''''>8
                        ^ \markup 7
                        \clef "bass"
                        <e fs a c'>4.
                        ^ \markup 8
                        \clef "treble"
                        <a' g'' af'' a''>2..
                        ^ \markup 9
                        ~
                        <a' g'' af'' a''>4
                        ^ \markup 10
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 8/9
                        {
                            cs''''32
                            ^ \markup 11
                            bf'''32
                            ^ \markup 12
                            af''''32
                            ^ \markup 13
                            e''''32
                            ^ \markup 14
                            fs''''32
                            ^ \markup 15
                            g''''32
                            ^ \markup 16
                            b'''32
                            ^ \markup 17
                            a'''32
                            ^ \markup 18
                            c''''32
                            ^ \markup 19
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 20
                        \clef "bass"
                        <a, c>8
                        ^ \markup 21
                        \clef "treble"
                        <b'' fs'''>4.
                        ^ \markup 22
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 12/13
                        {
                            ef'''32
                            ^ \markup 23
                            e'''32
                            ^ \markup 24
                            af'''32
                            ^ \markup 25
                            d'''32
                            ^ \markup 26
                            g'''32
                            ^ \markup 27
                            cs'''32
                            ^ \markup 28
                            c'''32
                            ^ \markup 29
                            f'''32
                            ^ \markup 30
                            fs'''32
                            ^ \markup 31
                            b''32
                            ^ \markup 32
                            fs'''32
                            ^ \markup 33
                            f'''32
                            ^ \markup 34
                            c'''32
                            ^ \markup 35
                        }
                        \revert TupletNumber.text
                        r1
                        ^ \markup 36
                        <d''' e''' af''' c''''>2.
                        ^ \markup 37
                        ~
                        <d''' e''' af''' c''''>4.
                        ^ \markup 38
                        <af' fs'' g'' af''>2..
                        ^ \markup 39
                        r4
                        ^ \markup 40
                        r8
                        ^ \markup 41
                        <a'' e''' fs''' a''' c''''>4.
                        ^ \markup 42
                        <a'' g''' af''' a'''>4
                        ^ \markup 43
                        r8
                        ^ \markup 44
                        \clef "bass"
                        <af,, bf,, cs,>2.
                        ^ \markup 45
                        ~
                        <af,, bf,, cs,>2
                        ^ \markup 46
                        \clef "treble"
                        <a'' e''' fs''' a''' c''''>1.
                        ^ \markup 47
                        ~
                        <a'' e''' fs''' a''' c''''>1..
                        ^ \markup 48
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 36/40
                        {
                            ef'''16
                            ^ \markup 49
                            [
                            e'''16
                            ^ \markup 50
                            af'''16
                            ^ \markup 51
                            d'''16
                            ^ \markup 52
                            g'''16
                            ^ \markup 53
                            cs'''16
                            ^ \markup 54
                            c'''16
                            ^ \markup 55
                            f'''16
                            ^ \markup 56
                            fs'''16
                            ^ \markup 57
                            b''16
                            ^ \markup 58
                            fs'''16
                            ^ \markup 59
                            f'''16
                            ^ \markup 60
                            c'''16
                            ^ \markup 61
                            cs'''16
                            ^ \markup 62
                            g'''16
                            ^ \markup 63
                            d'''16
                            ^ \markup 64
                            cs''''16
                            ^ \markup 65
                            bf'''16
                            ^ \markup 66
                            af''''16
                            ^ \markup 67
                            e''''16
                            ^ \markup 68
                            fs''''16
                            ^ \markup 69
                            g''''16
                            ^ \markup 70
                            b'''16
                            ^ \markup 71
                            a'''16
                            ^ \markup 72
                            c''''16
                            ^ \markup 73
                            f''''16
                            ^ \markup 74
                            d''''16
                            ^ \markup 75
                            a''''16
                            ^ \markup 76
                            af'''16
                            ^ \markup 77
                            d'''16
                            ^ \markup 78
                            g'''16
                            ^ \markup 79
                            e'''16
                            ^ \markup 80
                            cs'''16
                            ^ \markup 81
                            f''16
                            ^ \markup 82
                            c''16
                            ^ \markup 83
                            e''16
                            ^ \markup 84
                            bf''16
                            ^ \markup 85
                            fs''16
                            ^ \markup 86
                            cs''16
                            ^ \markup 87
                            g''16
                            ^ \markup 88
                            ]
                        }
                        <f'' a'' cs''' fs''' a'''>1.
                        ^ \markup 89
                        ~
                        <f'' a'' cs''' fs''' a'''>2.
                        ^ \markup 90
                        ~
                        <f'' a'' cs''' fs''' a'''>1..
                        ^ \markup 91
                        \clef "bass"
                        <b,, fs,>1.
                        ^ \markup 92
                        \clef "treble"
                        <af''' bf''' cs''''>2.
                        ^ \markup 93
                        ~
                        <af''' bf''' cs''''>2
                        ^ \markup 94
                        \clef "bass"
                        <af,, bf,, cs,>4
                        ^ \markup 95
                        \clef "treble"
                        <af''' cs'''' e''''>4
                        ^ \markup 96
                        \clef "bass"
                        <a,, e,>2.
                        ^ \markup 97
                        ~
                        <a,, e,>2
                        ^ \markup 98
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        r1.
                        ^ \markup 0
                        r2.
                        ^ \markup 1
                        \clef "bass"
                        <a,,, f,,>4
                        ^ \markup 2
                        r4
                        ^ \markup 3
                        <a,, cs,>8
                        ^ \markup 4
                        ~
                        <a,, cs,>4.
                        ^ \markup 5
                        r4
                        ^ \markup 6
                        \clef "treble"
                        <cs' d'' a''>8
                        ^ \markup 7
                        \clef "bass"
                        <d,, c, a,>4.
                        ^ \markup 8
                        <d cs'>2..
                        ^ \markup 9
                        ~
                        <d cs'>4
                        ^ \markup 10
                        ~
                        <d cs'>4
                        ^ \markup 11
                        r4
                        ^ \markup 12
                        <fs, af,>8
                        ^ \markup 13
                        \clef "treble"
                        <bf'>4.
                        ^ \markup 14
                        \clef "bass"
                        <ef,, f,, af,,>2..
                        ^ \markup 15
                        ~
                        <ef,, f,, af,,>4
                        ^ \markup 16
                        ~
                        <ef,, f,, af,,>4
                        ^ \markup 17
                        \clef "treble"
                        <af' b''>2.
                        ^ \markup 18
                        ~
                        <af' b''>4.
                        ^ \markup 19
                        \clef "bass"
                        <cs a>2..
                        ^ \markup 20
                        r4
                        ^ \markup 21
                        r8
                        ^ \markup 22
                        \clef "treble"
                        <d' c''>4.
                        ^ \markup 23
                        <d' cs''>4
                        ^ \markup 24
                        r8
                        ^ \markup 25
                        \clef "bass"
                        <c,, e,,>2.
                        ^ \markup 26
                        ~
                        <c,, e,,>2
                        ^ \markup 27
                        \clef "treble"
                        <d' c''>1.
                        ^ \markup 28
                        ~
                        <d' c''>1..
                        ^ \markup 29
                        \clef "bass"
                        <b,,, cs,, f,, a,,>1.
                        ^ \markup 30
                        ~
                        <b,,, cs,, f,, a,,>2.
                        ^ \markup 31
                        \clef "treble"
                        <b b'>1.
                        ^ \markup 32
                        ~
                        <b b'>2.
                        ^ \markup 33
                        ~
                        <b b'>1..
                        ^ \markup 34
                        \clef "bass"
                        <ef,, bf,,>1.
                        ^ \markup 35
                        \clef "treble"
                        <a'' cs'''>2.
                        ^ \markup 36
                        ~
                        <a'' cs'''>2
                        ^ \markup 37
                        \clef "bass"
                        <a,,, cs,,>4
                        ^ \markup 38
                        <g'' b''>4
                        ^ \markup 39
                        \clef "treble"
                        <d,, a,,>2.
                        ^ \markup 40
                        ~
                        <d,, a,,>2
                        ^ \markup 41
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
                        r1 * 9/4
                        ^ \markup 0
                        r1 * 1/4
                        ^ \markup 1
                        r1 * 1/4
                        ^ \markup 2
                        r1 * 1/8
                        ^ \markup 3
                        r1 * 3/8
                        ^ \markup 4
                        r1 * 1/4
                        ^ \markup 5
                        r1 * 1/8
                        ^ \markup 6
                        r1 * 3/8
                        ^ \markup 7
                        r1 * 11/8
                        ^ \markup 8
                        r1 * 1/4
                        ^ \markup 9
                        r1 * 1/8
                        ^ \markup 10
                        r1 * 3/8
                        ^ \markup 11
                        r1 * 11/8
                        ^ \markup 12
                        r1 * 9/8
                        ^ \markup 13
                        r8
                        ^ \markup 14
                        \repeat tremolo 4 {
                            c'32.
                            ^ \markup 15
                            c'32.
                            ^ \markup 16
                        }
                        \repeat tremolo 4 {
                            c'32.
                            ^ \markup 17
                            c'32.
                            ^ \markup 18
                        }
                        r1 * 1/4
                        ^ \markup 19
                        r1 * 1/8
                        ^ \markup 20
                        r4
                        ^ \markup 21
                        r4.
                        ^ \markup 22
                        r8
                        ^ \markup 23
                        r4
                        ^ \markup 24
                        \repeat tremolo 4 {
                            \override Staff.Stem.stemlet-length = 0.75
                            c'32
                            ^ \markup 25
                            \revert Staff.Stem.stemlet-length
                            c'32
                            ^ \markup 26
                            ]
                        }
                        r1 * 3/4
                        ^ \markup 27
                        r1 * 3/2
                        ^ \markup 28
                        r1 * 7/4
                        ^ \markup 29
                        r1 * 9/4
                        ^ \markup 30
                        r1 * 9/4
                        ^ \markup 31
                        r1 * 7/4
                        ^ \markup 32
                        r1 * 3/2
                        ^ \markup 33
                        r1 * 5/4
                        ^ \markup 34
                        r1 * 1/2
                        ^ \markup 35
                        r1 * 5/4
                        ^ \markup 36
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        c'2.
                        ^ \markup 0
                        ~
                        c'4
                        ^ \markup 1
                        ~
                        c'8
                        ^ \markup 2
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 49/32
                            ^ \markup 3
                            [
                            c'32 * 25/16
                            ^ \markup 4
                            r32 * 51/32
                            ^ \markup 5
                            c'32 * 53/32
                            ^ \markup 6
                            r32 * 55/32
                            ^ \markup 7
                            c'32 * 59/32
                            ^ \markup 8
                            c'32 * 63/32
                            ^ \markup 9
                            r32 * 69/32
                            ^ \markup 10
                            r32 * 19/8
                            ^ \markup 11
                            c'32 * 83/32
                            ^ \markup 12
                            c'32 * 23/8
                            ^ \markup 13
                            c'32 * 101/32
                            ^ \markup 14
                            r32 * 55/16
                            ^ \markup 15
                            c'32 * 59/16
                            ^ \markup 16
                            r32 * 123/32
                            ^ \markup 17
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 18
                        r4
                        ^ \markup 19
                        r8
                        ^ \markup 20
                        r4.
                        ^ \markup 21
                        r4
                        ^ \markup 22
                        r8
                        ^ \markup 23
                        r4.
                        ^ \markup 24
                        r4.
                        ^ \markup 25
                        r4
                        ^ \markup 26
                        r8
                        ^ \markup 27
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a'''32
                            ^ \markup 28
                            [
                            cs''''32
                            ^ \markup 29
                            aqs'''32
                            ^ \markup 30
                            b'''32
                            ^ \markup 31
                            aqf'''32
                            ^ \markup 32
                            \revert Staff.Stem.stemlet-length
                            dqf''''32
                            ^ \markup 33
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a'''32
                            ^ \markup 34
                            [
                            cs''''32
                            ^ \markup 35
                            aqs'''32
                            ^ \markup 36
                            b'''32
                            ^ \markup 37
                            \revert Staff.Stem.stemlet-length
                            aqf'''32
                            ^ \markup 38
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            dqf''''32
                            ^ \markup 39
                            [
                            a'''32
                            ^ \markup 40
                            cs''''32
                            ^ \markup 41
                            aqs'''32
                            ^ \markup 42
                            b'''32
                            ^ \markup 43
                            \revert Staff.Stem.stemlet-length
                            aqf'''32
                            ^ \markup 44
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            dqf''''32
                            ^ \markup 45
                            [
                            a'''32
                            ^ \markup 46
                            cs''''32
                            ^ \markup 47
                            aqs'''32
                            ^ \markup 48
                            \revert Staff.Stem.stemlet-length
                            b'''32
                            ^ \markup 49
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            aqf'''32
                            ^ \markup 50
                            [
                            dqf''''32
                            ^ \markup 51
                            a'''32
                            ^ \markup 52
                            cs''''32
                            ^ \markup 53
                            aqs'''32
                            ^ \markup 54
                            \revert Staff.Stem.stemlet-length
                            b'''32
                            ^ \markup 55
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 56
                        c'8
                        ^ \markup 57
                        c'4.
                        ^ \markup 58
                        ~
                        c'8
                        ^ \markup 59
                        r4
                        ^ \markup 60
                        r1
                        ^ \markup 61
                        r2.
                        ^ \markup 62
                        r4.
                        ^ \markup 63
                        r8
                        ^ \markup 64
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 12/13
                        {
                            c'32
                            ^ \markup 65
                            [
                            c'32
                            ^ \markup 66
                            c'32
                            ^ \markup 67
                            c'32
                            ^ \markup 68
                            c'32
                            ^ \markup 69
                            c'32
                            ^ \markup 70
                            c'32
                            ^ \markup 71
                            c'32
                            ^ \markup 72
                            c'32
                            ^ \markup 73
                            c'32
                            ^ \markup 74
                            c'32
                            ^ \markup 75
                            c'32
                            ^ \markup 76
                            c'32
                            ^ \markup 77
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'16
                            ^ \markup 78
                            [
                            c'16
                            ^ \markup 79
                            c'8.
                            ^ \markup 80
                            c'16
                            ^ \markup 81
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 82
                        c'8
                        ^ \markup 83
                        r4.
                        ^ \markup 84
                        r4
                        ^ \markup 85
                        r8
                        ^ \markup 86
                        r4
                        ^ \markup 87
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 4/7
                        {
                            c'16
                            ^ \markup 88
                            [
                            c'8.
                            ^ \markup 89
                            c'16
                            ^ \markup 90
                            c'8
                            ^ \markup 91
                            ]
                        }
                        \revert TupletNumber.text
                        r2.
                        ^ \markup 92
                        r1.
                        ^ \markup 93
                        r8
                        ^ \markup 94
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 49/32
                            ^ \markup 95
                            [
                            c'32 * 49/32
                            ^ \markup 96
                            r32 * 25/16
                            ^ \markup 97
                            c'32 * 51/32
                            ^ \markup 98
                            r32 * 13/8
                            ^ \markup 99
                            c'32 * 27/16
                            ^ \markup 100
                            c'32 * 7/4
                            ^ \markup 101
                            c'32 * 59/32
                            ^ \markup 102
                            c'32 * 63/32
                            ^ \markup 103
                            c'32 * 67/32
                            ^ \markup 104
                            r32 * 71/32
                            ^ \markup 105
                            c'32 * 77/32
                            ^ \markup 106
                            r32 * 83/32
                            ^ \markup 107
                            c'32 * 89/32
                            ^ \markup 108
                            c'32 * 3
                            ^ \markup 109
                            c'32 * 103/32
                            ^ \markup 110
                            c'32 * 55/16
                            ^ \markup 111
                            c'32 * 115/32
                            ^ \markup 112
                            r32 * 15/4
                            ^ \markup 113
                            c'32 * 61/16
                            ^ \markup 114
                            ]
                        }
                        \revert TupletNumber.text
                        r8
                        ^ \markup 115
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'\breve
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 51/32
                            ^ \markup 116
                            [
                            c'32 * 51/32
                            ^ \markup 117
                            r32 * 51/32
                            ^ \markup 118
                            c'32 * 13/8
                            ^ \markup 119
                            r32 * 13/8
                            ^ \markup 120
                            c'32 * 53/32
                            ^ \markup 121
                            c'32 * 27/16
                            ^ \markup 122
                            c'32 * 7/4
                            ^ \markup 123
                            c'32 * 57/32
                            ^ \markup 124
                            c'32 * 59/32
                            ^ \markup 125
                            r32 * 61/32
                            ^ \markup 126
                            c'32 * 63/32
                            ^ \markup 127
                            r32 * 33/16
                            ^ \markup 128
                            c'32 * 17/8
                            ^ \markup 129
                            c'32 * 71/32
                            ^ \markup 130
                            c'32 * 75/32
                            ^ \markup 131
                            c'32 * 79/32
                            ^ \markup 132
                            c'32 * 83/32
                            ^ \markup 133
                            r32 * 87/32
                            ^ \markup 134
                            c'32 * 91/32
                            ^ \markup 135
                            r32 * 3
                            ^ \markup 136
                            c'32 * 101/32
                            ^ \markup 137
                            c'32 * 53/16
                            ^ \markup 138
                            c'32 * 111/32
                            ^ \markup 139
                            c'32 * 115/32
                            ^ \markup 140
                            c'32 * 119/32
                            ^ \markup 141
                            r32 * 123/32
                            ^ \markup 142
                            c'32 * 125/32
                            ^ \markup 143
                            r32 * 4
                            ^ \markup 144
                            ]
                        }
                        \revert TupletNumber.text
                        c'1.
                        ^ \markup 145
                        ~
                        c'2.
                        ^ \markup 146
                        ~
                        c'1..
                        ^ \markup 147
                        c'1.
                        ^ \markup 148
                        c'2.
                        ^ \markup 149
                        ~
                        c'2
                        ^ \markup 150
                        c'4
                        ^ \markup 151
                        c'4
                        ^ \markup 152
                        c'2.
                        ^ \markup 153
                        ~
                        c'2
                        ^ \markup 154
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
                        r1 * 9/4
                        ^ \markup 0
                        r1 * 1/4
                        ^ \markup 1
                        r1 * 1/4
                        ^ \markup 2
                        r1 * 1/8
                        ^ \markup 3
                        r1 * 3/8
                        ^ \markup 4
                        r1 * 1/4
                        ^ \markup 5
                        r1 * 1/8
                        ^ \markup 6
                        r1 * 3/8
                        ^ \markup 7
                        r1 * 11/8
                        ^ \markup 8
                        r1 * 1/4
                        ^ \markup 9
                        r1 * 1/8
                        ^ \markup 10
                        r1 * 3/8
                        ^ \markup 11
                        r1 * 11/8
                        ^ \markup 12
                        r1 * 9/8
                        ^ \markup 13
                        r1 * 7/8
                        ^ \markup 14
                        r1 * 1/4
                        ^ \markup 15
                        r1 * 1/8
                        ^ \markup 16
                        r1 * 5/8
                        ^ \markup 17
                        r1 * 1/8
                        ^ \markup 18
                        r1 * 5/4
                        ^ \markup 19
                        r1 * 3/2
                        ^ \markup 20
                        r1 * 7/4
                        ^ \markup 21
                        r1 * 9/4
                        ^ \markup 22
                        r1 * 9/4
                        ^ \markup 23
                        r1 * 7/4
                        ^ \markup 24
                        r1 * 3/2
                        ^ \markup 25
                        r1 * 5/4
                        ^ \markup 26
                        r1 * 1/2
                        ^ \markup 27
                        r1 * 5/4
                        ^ \markup 28
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        c'2.
                        ^ \markup 0
                        ~
                        c'4
                        ^ \markup 1
                        ~
                        c'8
                        ^ \markup 2
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 49/32
                            ^ \markup 3
                            [
                            c'32 * 25/16
                            ^ \markup 4
                            r32 * 51/32
                            ^ \markup 5
                            c'32 * 53/32
                            ^ \markup 6
                            r32 * 55/32
                            ^ \markup 7
                            c'32 * 59/32
                            ^ \markup 8
                            c'32 * 63/32
                            ^ \markup 9
                            r32 * 69/32
                            ^ \markup 10
                            r32 * 19/8
                            ^ \markup 11
                            c'32 * 83/32
                            ^ \markup 12
                            c'32 * 23/8
                            ^ \markup 13
                            c'32 * 101/32
                            ^ \markup 14
                            r32 * 55/16
                            ^ \markup 15
                            c'32 * 59/16
                            ^ \markup 16
                            r32 * 123/32
                            ^ \markup 17
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 18
                        r4
                        ^ \markup 19
                        r8
                        ^ \markup 20
                        r4.
                        ^ \markup 21
                        r4
                        ^ \markup 22
                        r8
                        ^ \markup 23
                        r4.
                        ^ \markup 24
                        r2..
                        ^ \markup 25
                        r4
                        ^ \markup 26
                        r4
                        ^ \markup 27
                        r4
                        ^ \markup 28
                        r8
                        ^ \markup 29
                        r4.
                        ^ \markup 30
                        r2..
                        ^ \markup 31
                        r4
                        ^ \markup 32
                        r4
                        ^ \markup 33
                        r8
                        ^ \markup 34
                        c'4
                        ^ \markup 35
                        ~
                        c'2.
                        ^ \markup 36
                        c'2..
                        ^ \markup 37
                        r4
                        ^ \markup 38
                        c'8
                        ^ \markup 39
                        r4.
                        ^ \markup 40
                        r4
                        ^ \markup 41
                        r8
                        ^ \markup 42
                        r2
                        ^ \markup 43
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 51/32
                            ^ \markup 44
                            [
                            c'32 * 51/32
                            ^ \markup 45
                            r32 * 27/16
                            ^ \markup 46
                            c'32 * 29/16
                            ^ \markup 47
                            r32 * 65/32
                            ^ \markup 48
                            c'32 * 73/32
                            ^ \markup 49
                            c'32 * 21/8
                            ^ \markup 50
                            c'32 * 97/32
                            ^ \markup 51
                            c'32 * 111/32
                            ^ \markup 52
                            c'32 * 31/8
                            ^ \markup 53
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'2.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            r32 * 51/32
                            ^ \markup 54
                            [
                            c'32 * 51/32
                            ^ \markup 55
                            r32 * 27/16
                            ^ \markup 56
                            \override Staff.Stem.stemlet-length = 0.75
                            c'32 * 29/16
                            ^ \markup 57
                            [
                            c'32 * 65/32
                            ^ \markup 58
                            c'32 * 73/32
                            ^ \markup 59
                            c'32 * 21/8
                            ^ \markup 60
                            \revert Staff.Stem.stemlet-length
                            c'32 * 97/32
                            ^ \markup 61
                            ]
                            r32 * 111/32
                            ^ \markup 62
                            c'32 * 31/8
                            ^ \markup 63
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 16/17
                        {
                            c'64
                            ^ \markup 64
                            c'64
                            ^ \markup 65
                            c'64
                            ^ \markup 66
                            c'64
                            ^ \markup 67
                            c'64
                            ^ \markup 68
                            c'64
                            ^ \markup 69
                            c'64
                            ^ \markup 70
                            c'64
                            ^ \markup 71
                            c'64
                            ^ \markup 72
                            c'64
                            ^ \markup 73
                            c'64
                            ^ \markup 74
                            c'64
                            ^ \markup 75
                            c'64
                            ^ \markup 76
                            c'64
                            ^ \markup 77
                            c'64
                            ^ \markup 78
                            c'64
                            ^ \markup 79
                            c'64
                            ^ \markup 80
                        }
                        \revert TupletNumber.text
                        r2
                        ^ \markup 81
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 3/2
                            ^ \markup 82
                            [
                            c'32 * 3/2
                            ^ \markup 83
                            r32 * 49/32
                            ^ \markup 84
                            c'32 * 25/16
                            ^ \markup 85
                            r32 * 13/8
                            ^ \markup 86
                            c'32 * 55/32
                            ^ \markup 87
                            c'32 * 29/16
                            ^ \markup 88
                            r32 * 63/32
                            ^ \markup 89
                            r32 * 17/8
                            ^ \markup 90
                            c'32 * 37/16
                            ^ \markup 91
                            c'32 * 5/2
                            ^ \markup 92
                            c'32 * 11/4
                            ^ \markup 93
                            r32 * 3
                            ^ \markup 94
                            c'32 * 13/4
                            ^ \markup 95
                            r32 * 111/32
                            ^ \markup 96
                            c'32 * 117/32
                            ^ \markup 97
                            c'32 * 119/32
                            ^ \markup 98
                            ]
                        }
                        \revert TupletNumber.text
                        r2
                        ^ \markup 99
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'\breve
                                        ~
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            c'32 * 51/32
                            ^ \markup 100
                            [
                            c'32 * 51/32
                            ^ \markup 101
                            r32 * 51/32
                            ^ \markup 102
                            c'32 * 13/8
                            ^ \markup 103
                            r32 * 13/8
                            ^ \markup 104
                            c'32 * 53/32
                            ^ \markup 105
                            c'32 * 27/16
                            ^ \markup 106
                            r32 * 7/4
                            ^ \markup 107
                            r32 * 57/32
                            ^ \markup 108
                            c'32 * 59/32
                            ^ \markup 109
                            c'32 * 61/32
                            ^ \markup 110
                            c'32 * 63/32
                            ^ \markup 111
                            r32 * 33/16
                            ^ \markup 112
                            c'32 * 17/8
                            ^ \markup 113
                            r32 * 71/32
                            ^ \markup 114
                            c'32 * 75/32
                            ^ \markup 115
                            c'32 * 79/32
                            ^ \markup 116
                            r32 * 83/32
                            ^ \markup 117
                            r32 * 87/32
                            ^ \markup 118
                            c'32 * 91/32
                            ^ \markup 119
                            c'32 * 3
                            ^ \markup 120
                            c'32 * 101/32
                            ^ \markup 121
                            r32 * 53/16
                            ^ \markup 122
                            c'32 * 111/32
                            ^ \markup 123
                            r32 * 115/32
                            ^ \markup 124
                            c'32 * 119/32
                            ^ \markup 125
                            c'32 * 123/32
                            ^ \markup 126
                            r32 * 125/32
                            ^ \markup 127
                            r32 * 4
                            ^ \markup 128
                            ]
                        }
                        \revert TupletNumber.text
                        c'1.
                        ^ \markup 129
                        ~
                        c'2.
                        ^ \markup 130
                        ~
                        c'1..
                        ^ \markup 131
                        c'1.
                        ^ \markup 132
                        c'2.
                        ^ \markup 133
                        ~
                        c'2
                        ^ \markup 134
                        c'4
                        ^ \markup 135
                        c'4
                        ^ \markup 136
                        c'2.
                        ^ \markup 137
                        ~
                        c'2
                        ^ \markup 138
                    }
                }
            >>
        >>
    >>
}
