    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 2=65
            \time 4/2
            s1 * 2
            \boxed-markup "Skyward, {diagonal moves} (ii)" 1.5
            \time 4/2
            s1 * 2
            \time 4/2
            s1 * 2
            \time 4/2
            s1 * 2
            \time 3/2
            s1 * 3/2
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
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
                        \tweak direction #up
                        \times 2/3
                        {
                            \set PianoStaff.shortInstrumentName =
                            \markup { pno. }
                            \ottava 1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 0
                            - \tweak circled-tip ##t
                            \<
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 2
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 3
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 4
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 5
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
                        \tweak direction #up
                        \times 4/7
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 6
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 7
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 8
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 9
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 10
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 11
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 12
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
                        \tweak direction #up
                        \times 2/3
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 13
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 14
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 15
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 16
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 17
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 18
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
                        \tweak direction #up
                        \times 4/7
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 19
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 20
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 21
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 22
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 23
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 24
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 25
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
                        \tweak direction #up
                        \times 2/3
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            \f
                            ^ \markup 26
                            - \tweak circled-tip ##t
                            \>
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 27
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 28
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 29
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 30
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 31
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
                        \tweak direction #up
                        \times 4/5
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 32
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 33
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 34
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 35
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 36
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
                        \tweak direction #up
                        \times 1/1
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 37
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "treble"
                            b'''16
                            - \accent
                            ^ \markup 38
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 39
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 40
                        }
                        \revert TupletNumber.text
                        <b'' d''' e''' af''' c''''>4
                        :32
                        \arpeggio
                        ^ \markup 41
                        - \tweak circled-tip ##t
                        \<
                        ~
                        <b'' d''' e''' af''' c''''>1.
                        :32
                        \f
                        ^ \markup 42
                        - \tweak circled-tip ##t
                        \>
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 14/13
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''32
                            ^ \markup 43
                            - \tweak circled-tip ##t
                            \<
                            [
                            \(
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''32
                            ^ \markup 44
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''32
                            ^ \markup 45
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g'''32
                            ^ \markup 46
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g'''32
                            ^ \markup 47
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f'''32
                            ^ \markup 48
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f'''32
                            ^ \markup 49
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''32
                            ^ \markup 50
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''32
                            ^ \markup 51
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''32
                            ^ \markup 52
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''32
                            ^ \markup 53
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''32
                            ^ \markup 54
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''32
                            ^ \markup 55
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 7/6
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''16
                            ^ \markup 56
                            [
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''16
                            ^ \markup 57
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''8.
                            ^ \markup 58
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''16
                            ^ \markup 59
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
                                        c'4..
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
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''16
                            ^ \markup 60
                            [
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''8.
                            \f
                            ^ \markup 61
                            - \tweak circled-tip ##t
                            \>
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g'''16
                            ^ \markup 62
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g'''8
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 14/13
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f'''32
                            ^ \markup 64
                            [
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f'''32
                            ^ \markup 65
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''32
                            ^ \markup 66
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''32
                            ^ \markup 67
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''32
                            ^ \markup 68
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a'''32
                            ^ \markup 69
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''32
                            ^ \markup 70
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af'''32
                            ^ \markup 71
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g'''32
                            ^ \markup 72
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g'''32
                            ^ \markup 73
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f'''32
                            ^ \markup 74
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f'''32
                            ^ \markup 75
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e'''32
                            ^ \markup 76
                            \)
                            ]
                            \ottava 0
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
                                        c'1..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak direction #up
                        \times 28/32
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            bf''16
                            ^ \markup 77
                            - \tweak circled-tip ##t
                            \<
                            \ottava -1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "bass"
                            cs,,16
                            - \marcato
                            ^ \markup 78
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            fs,,16
                            - \marcato
                            ^ \markup 79
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            d,,16
                            - \marcato
                            ^ \markup 80
                            \ottava 0
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "treble"
                            bf'16
                            ^ \markup 81
                            \(
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'16
                            ^ \markup 82
                            \)
                            \ottava -1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "bass"
                            g,,16
                            - \marcato
                            ^ \markup 83
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af,,16
                            - \marcato
                            ^ \markup 84
                            \ottava 0
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "treble"
                            a''16
                            ^ \markup 85
                            \(
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            ef''16
                            ^ \markup 86
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f''16
                            ^ \markup 87
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c''16
                            ^ \markup 88
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            e''16
                            ^ \markup 89
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c''16
                            ^ \markup 90
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            f''16
                            ^ \markup 91
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            ef''16
                            ^ \markup 92
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            a''16
                            ^ \markup 93
                            \)
                            \ottava -1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "bass"
                            af,,16
                            - \marcato
                            ^ \markup 94
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g,,16
                            - \marcato
                            ^ \markup 95
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b,,,16
                            - \marcato
                            ^ \markup 96
                            \ottava 0
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "treble"
                            bf'16
                            \f
                            ^ \markup 97
                            - \tweak circled-tip ##t
                            \>
                            \(
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            d''16
                            ^ \markup 98
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            fs''16
                            ^ \markup 99
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            cs''16
                            ^ \markup 100
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            bf''16
                            ^ \markup 101
                            \)
                            \ottava -1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "bass"
                            cs,,16
                            - \marcato
                            ^ \markup 102
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            fs,,16
                            - \marcato
                            ^ \markup 103
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            d,,16
                            - \marcato
                            ^ \markup 104
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            bf,,,16
                            - \marcato
                            ^ \markup 105
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b,,,16
                            - \marcato
                            ^ \markup 106
                            \ottava 0
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            \clef "treble"
                            g''16
                            ^ \markup 107
                            \(
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            af''16
                            ^ \markup 108
                            \)
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
                        \tweak direction #up
                        \times 2/3
                        {
                            \ottava 1
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 109
                            - \tweak circled-tip ##t
                            \<
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 110
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 111
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 112
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 113
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 114
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
                        \tweak direction #up
                        \times 4/7
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 115
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 116
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 117
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 118
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 119
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 120
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 121
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
                        \tweak direction #up
                        \times 2/3
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 122
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 123
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 124
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 125
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 126
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 127
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
                        \tweak direction #up
                        \times 4/7
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 128
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 129
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 130
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 131
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 132
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 133
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            \f
                            ^ \markup 134
                            - \tweak circled-tip ##t
                            \>
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
                        \tweak direction #up
                        \times 2/3
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 135
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 136
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 137
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 138
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 139
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 140
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
                        \tweak direction #up
                        \times 4/5
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 141
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 142
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 143
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 144
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 145
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
                        \tweak direction #up
                        \times 1/1
                        {
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            - \accent
                            ^ \markup 146
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 147
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            ^ \markup 148
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            b'''16
                            \!
                            ^ \markup 149
                        }
                        \revert TupletNumber.text
                        <a'' cs''' af''' bf''' cs''''>2.
                        :32
                        \p
                        \arpeggio
                        ^ \markup 150
                        \ottava 0
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \staff-line-count 1
                        s1..
                        ^ \markup 0
                        \staff-line-count 5
                        \clef "bass"
                        <b, af'>4
                        :32
                        \arpeggio
                        ^ \markup 1
                        ~
                        \staff-line-count 5
                        <b, af'>1.
                        :32
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak direction #down
                        \times 14/13
                        {
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,32
                            ^ \markup 3
                            [
                            \(
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 4
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 5
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 6
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 7
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 8
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 9
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,32
                            ^ \markup 10
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,32
                            ^ \markup 11
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 12
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 13
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 14
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 15
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak direction #down
                        \times 7/6
                        {
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c16
                            ^ \markup 16
                            [
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c16
                            ^ \markup 17
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g8.
                            ^ \markup 18
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g16
                            ^ \markup 19
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak direction #down
                        \times 1/1
                        {
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c16
                            ^ \markup 20
                            [
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c8.
                            ^ \markup 21
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,16
                            ^ \markup 22
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,8
                            ^ \markup 23
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
                                        c'4..
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \tweak direction #down
                        \times 14/13
                        {
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 24
                            [
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 25
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 26
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 27
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 28
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 29
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,32
                            ^ \markup 30
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c,32
                            ^ \markup 31
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 32
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 33
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 34
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            g32
                            ^ \markup 35
                            \staff-line-count 5
                            \once \override Beam.transparent = ##t
                            \once \override Dots.transparent = ##t
                            \once \override Flag.transparent = ##t
                            \once \override Stem.transparent = ##t
                            c32
                            ^ \markup 36
                            \)
                            ]
                        }
                        \revert TupletNumber.text
                        \staff-line-count 1
                        s1..
                        ^ \markup 37
                        \staff-line-count 1
                        s1..
                        ^ \markup 38
                        \staff-line-count 5
                        <cs' d''>2.
                        :32
                        \arpeggio
                        ^ \markup 39
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
                            c'32
                            ^ \markup 0
                            c'32
                            ^ \markup 1
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 2
                            c'128
                            ^ \markup 3
                        }
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 4
                            c'32
                            ^ \markup 5
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 6
                            c'128
                            ^ \markup 7
                        }
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 8
                            c'32
                            ^ \markup 9
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 10
                            c'128
                            ^ \markup 11
                        }
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 12
                            c'32
                            ^ \markup 13
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 14
                            c'128
                            ^ \markup 15
                        }
                        r2.
                        ^ \markup 16
                        r1
                        ^ \markup 17
                        r1
                        ^ \markup 18
                        r1
                        ^ \markup 19
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 20
                            c'32
                            ^ \markup 21
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 22
                            c'128
                            ^ \markup 23
                        }
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 24
                            c'32
                            ^ \markup 25
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 26
                            c'128
                            ^ \markup 27
                        }
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 28
                            c'32
                            ^ \markup 29
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 30
                            c'128
                            ^ \markup 31
                        }
                        \repeat tremolo 4 {
                            c'32
                            ^ \markup 32
                            c'32
                            ^ \markup 33
                        }
                        \repeat tremolo 4 {
                            c'128
                            ^ \markup 34
                            c'128
                            ^ \markup 35
                        }
                        r1..
                        ^ \markup 36
                        r1.
                        ^ \markup 37
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
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
                                        ~
                                        c'16
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
                            c'4
                            ^ \markup 0
                            c'16
                            ^ \markup 1
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 15/18
                        {
                            c'16
                            ^ \markup 2
                            [
                            c'16
                            ^ \markup 3
                            ]
                            c'4
                            ^ \markup 4
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 30/21
                        {
                            c'32
                            ^ \markup 5
                            [
                            c'32
                            ^ \markup 6
                            c'32
                            ^ \markup 7
                            c'8
                            ^ \markup 8
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 15/18
                        {
                            c'8
                            ^ \markup 9
                            [
                            c'8
                            ^ \markup 10
                            c'8
                            ^ \markup 11
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
                        \times 20/24
                        {
                            c'16
                            ^ \markup 12
                            c'16
                            ^ \markup 13
                            c'16
                            ^ \markup 14
                            c'16
                            ^ \markup 15
                            c'16
                            ^ \markup 16
                            c'16
                            ^ \markup 17
                            c'16
                            ^ \markup 18
                            c'16
                            ^ \markup 19
                            c'16
                            ^ \markup 20
                            c'16
                            ^ \markup 21
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
                            c'16
                            ^ \markup 34
                            c'16
                            ^ \markup 35
                        }
                        \revert TupletNumber.text
                        c'1
                        ^ \markup 36
                        ~
                        c'4
                        ^ \markup 37
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
                        \times 2/3
                        {
                            c''16
                            ^ \markup 38
                            e''16
                            ^ \markup 39
                            cqs''16
                            ^ \markup 40
                            d''16
                            ^ \markup 41
                            bqs'16
                            ^ \markup 42
                            eqs''16
                            ^ \markup 43
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
                        \times 4/7
                        {
                            c''16
                            ^ \markup 44
                            e''16
                            ^ \markup 45
                            cqs''16
                            ^ \markup 46
                            d''16
                            ^ \markup 47
                            bqs'16
                            ^ \markup 48
                            eqs''16
                            ^ \markup 49
                            c''16
                            ^ \markup 50
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
                        \times 2/3
                        {
                            e''16
                            ^ \markup 51
                            cqs''16
                            ^ \markup 52
                            d''16
                            ^ \markup 53
                            bqs'16
                            ^ \markup 54
                            eqs''16
                            ^ \markup 55
                            c''16
                            ^ \markup 56
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
                        \times 4/7
                        {
                            e''16
                            ^ \markup 57
                            cqs''16
                            ^ \markup 58
                            d''16
                            ^ \markup 59
                            bqs'16
                            ^ \markup 60
                            eqs''16
                            ^ \markup 61
                            c''16
                            ^ \markup 62
                            e''16
                            ^ \markup 63
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
                        \times 2/3
                        {
                            cqs''16
                            ^ \markup 64
                            d''16
                            ^ \markup 65
                            bqs'16
                            ^ \markup 66
                            eqs''16
                            ^ \markup 67
                            c''16
                            ^ \markup 68
                            e''16
                            ^ \markup 69
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 5/8
                        {
                            c'16
                            ^ \markup 70
                            c'4..
                            ^ \markup 71
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 5/7
                        {
                            c'16
                            ^ \markup 72
                            c'4.
                            ^ \markup 73
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
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 5/9
                        {
                            c'16.
                            ^ \markup 74
                            c'4...
                            ^ \markup 75
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
                                        ~
                                        c'16
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
                            ^ \markup 76
                            c'4
                            ^ \markup 77
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
                        \times 20/24
                        {
                            c'16
                            ^ \markup 78
                            c'16
                            ^ \markup 79
                            c'16
                            ^ \markup 80
                            c'16
                            ^ \markup 81
                            c'16
                            ^ \markup 82
                            c'16
                            ^ \markup 83
                            c'16
                            ^ \markup 84
                            c'16
                            ^ \markup 85
                            c'16
                            ^ \markup 86
                            c'16
                            ^ \markup 87
                            c'16
                            ^ \markup 88
                            c'16
                            ^ \markup 89
                            c'16
                            ^ \markup 90
                            c'16
                            ^ \markup 91
                            c'16
                            ^ \markup 92
                            c'16
                            ^ \markup 93
                            c'16
                            ^ \markup 94
                            c'16
                            ^ \markup 95
                            c'16
                            ^ \markup 96
                            c'16
                            ^ \markup 97
                            c'16
                            ^ \markup 98
                            c'16
                            ^ \markup 99
                            c'16
                            ^ \markup 100
                            c'16
                            ^ \markup 101
                        }
                        \revert TupletNumber.text
                        c'2
                        ^ \markup 102
                        ~
                        c'2.
                        ^ \markup 103
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
                        \times 1/1
                        {
                            d'''16
                            ^ \markup 104
                            fs'''16
                            ^ \markup 105
                            dqs'''16
                            ^ \markup 106
                            e'''16
                            ^ \markup 107
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
                        \times 4/5
                        {
                            dqf'''16
                            ^ \markup 108
                            gqf'''16
                            ^ \markup 109
                            d'''16
                            ^ \markup 110
                            fs'''16
                            ^ \markup 111
                            dqs'''16
                            ^ \markup 112
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
                        \times 2/3
                        {
                            e'''16
                            ^ \markup 113
                            dqf'''16
                            ^ \markup 114
                            gqf'''16
                            ^ \markup 115
                            d'''16
                            ^ \markup 116
                            fs'''16
                            ^ \markup 117
                            dqs'''16
                            ^ \markup 118
                        }
                        \revert TupletNumber.text
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
                        r1.
                        ^ \markup 0
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 1
                            c'64.
                            ^ \markup 2
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 3
                            c'64.
                            ^ \markup 4
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 5
                            c'64.
                            ^ \markup 6
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 7
                            c'64.
                            ^ \markup 8
                        }
                        r2.
                        ^ \markup 9
                        r1
                        ^ \markup 10
                        r2
                        ^ \markup 11
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 12
                            c'64.
                            ^ \markup 13
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 14
                            c'64.
                            ^ \markup 15
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 16
                            c'64.
                            ^ \markup 17
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 18
                            c'64.
                            ^ \markup 19
                        }
                        r2.
                        ^ \markup 20
                        r1.
                        ^ \markup 21
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 22
                            c'64.
                            ^ \markup 23
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 24
                            c'64.
                            ^ \markup 25
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 26
                            c'64.
                            ^ \markup 27
                        }
                        \repeat tremolo 4 {
                            c'64.
                            ^ \markup 28
                            c'64.
                            ^ \markup 29
                        }
                        r4
                        ^ \markup 30
                        r1
                        ^ \markup 31
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        c'2.
                        ^ \markup 0
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
                        \times 6/5
                        {
                            d'''8
                            ^ \markup 1
                            fs'''8
                            ^ \markup 2
                            dqs'''8
                            ^ \markup 3
                            e'''8
                            ^ \markup 4
                            dqf'''8
                            ^ \markup 5
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
                                        c'8.
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
                            c'64
                            ^ \markup 6
                            [
                            c'64
                            ^ \markup 7
                            c'64
                            ^ \markup 8
                            c'64
                            ^ \markup 9
                            c'64
                            ^ \markup 10
                            c'64
                            ^ \markup 11
                            c'64
                            ^ \markup 12
                            c'64
                            ^ \markup 13
                            c'64
                            ^ \markup 14
                            c'64
                            ^ \markup 15
                            c'64
                            ^ \markup 16
                            c'64
                            ^ \markup 17
                            c'64
                            ^ \markup 18
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
                                        c'8.
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
                            c'32
                            ^ \markup 19
                            [
                            c'32
                            ^ \markup 20
                            c'16.
                            ^ \markup 21
                            c'32
                            ^ \markup 22
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/7
                        {
                            c'32
                            ^ \markup 23
                            [
                            c'16.
                            ^ \markup 24
                            c'32
                            ^ \markup 25
                            c'16
                            ^ \markup 26
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
                                        c'8.
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
                            c'64
                            ^ \markup 27
                            [
                            c'64
                            ^ \markup 28
                            c'64
                            ^ \markup 29
                            c'64
                            ^ \markup 30
                            c'64
                            ^ \markup 31
                            c'64
                            ^ \markup 32
                            c'64
                            ^ \markup 33
                            c'64
                            ^ \markup 34
                            c'64
                            ^ \markup 35
                            c'64
                            ^ \markup 36
                            c'64
                            ^ \markup 37
                            c'64
                            ^ \markup 38
                            c'64
                            ^ \markup 39
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
                        \times 12/16
                        {
                            c'16
                            ^ \markup 40
                            c'16
                            ^ \markup 41
                            c'16
                            ^ \markup 42
                            c'16
                            ^ \markup 43
                            c'16
                            ^ \markup 44
                            c'16
                            ^ \markup 45
                            c'16
                            ^ \markup 46
                            c'16
                            ^ \markup 47
                            c'16
                            ^ \markup 48
                            c'16
                            ^ \markup 49
                            c'16
                            ^ \markup 50
                            c'16
                            ^ \markup 51
                            c'16
                            ^ \markup 52
                            c'16
                            ^ \markup 53
                            c'16
                            ^ \markup 54
                            c'16
                            ^ \markup 55
                        }
                        \revert TupletNumber.text
                        c'2.
                        ^ \markup 56
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
                        \times 3/2
                        {
                            d'''8
                            ^ \markup 57
                            fs'''8
                            ^ \markup 58
                            dqs'''8
                            ^ \markup 59
                            e'''8
                            ^ \markup 60
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/5
                        {
                            c'8
                            ^ \markup 61
                            [
                            c'32
                            ^ \markup 62
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
                                        c'8.
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
                            c'32
                            ^ \markup 63
                            [
                            c'32
                            ^ \markup 64
                            c'8
                            ^ \markup 65
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/7
                        {
                            c'32
                            ^ \markup 66
                            [
                            c'32
                            ^ \markup 67
                            c'32
                            ^ \markup 68
                            c'8
                            ^ \markup 69
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
                                        c'8.
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
                            ^ \markup 70
                            [
                            c'16
                            ^ \markup 71
                            c'16
                            ^ \markup 72
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
                        \times 12/16
                        {
                            c'16
                            ^ \markup 73
                            c'16
                            ^ \markup 74
                            c'16
                            ^ \markup 75
                            c'16
                            ^ \markup 76
                            c'16
                            ^ \markup 77
                            c'16
                            ^ \markup 78
                            c'16
                            ^ \markup 79
                            c'16
                            ^ \markup 80
                            c'16
                            ^ \markup 81
                            c'16
                            ^ \markup 82
                            c'16
                            ^ \markup 83
                            c'16
                            ^ \markup 84
                            c'16
                            ^ \markup 85
                            c'16
                            ^ \markup 86
                            c'16
                            ^ \markup 87
                            c'16
                            ^ \markup 88
                        }
                        \revert TupletNumber.text
                        c'2.
                        ^ \markup 89
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
                        \times 6/5
                        {
                            d'''8
                            ^ \markup 90
                            fs'''8
                            ^ \markup 91
                            dqs'''8
                            ^ \markup 92
                            e'''8
                            ^ \markup 93
                            dqf'''8
                            ^ \markup 94
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/8
                        {
                            c'32
                            ^ \markup 95
                            [
                            c'8..
                            ^ \markup 96
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/7
                        {
                            c'32
                            ^ \markup 97
                            [
                            c'8.
                            ^ \markup 98
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/2
                        {
                            c'32
                            ^ \markup 99
                            [
                            c'8
                            ^ \markup 100
                            ~
                            c'32
                            ^ \markup 101
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
                                        c'8.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/5
                        {
                            c'32
                            ^ \markup 102
                            [
                            c'8
                            ^ \markup 103
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
                        \times 12/16
                        {
                            c'16
                            ^ \markup 104
                            c'16
                            ^ \markup 105
                            c'16
                            ^ \markup 106
                            c'16
                            ^ \markup 107
                            c'16
                            ^ \markup 108
                            c'16
                            ^ \markup 109
                            c'16
                            ^ \markup 110
                            c'16
                            ^ \markup 111
                            c'16
                            ^ \markup 112
                            c'16
                            ^ \markup 113
                            c'16
                            ^ \markup 114
                            c'16
                            ^ \markup 115
                            c'16
                            ^ \markup 116
                            c'16
                            ^ \markup 117
                            c'16
                            ^ \markup 118
                            c'16
                            ^ \markup 119
                        }
                        \revert TupletNumber.text
                        c'2
                        ^ \markup 120
                    }
                }
            >>
        >>
    >>
