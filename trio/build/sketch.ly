    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/2
            s1 * 3/2
            \boxed-markup "Matter, to Self-Organize" 0.5
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
                        \set PianoStaff.instrumentName =
                        \markup { Piano }
                        <bf'' b'' fs'''>2
                        :32
                        \ff
                        \arpeggio
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <f'' a'' cs''' fs'''>2
                        :32
                        \p
                        \arpeggio
                        \<
                        <a'' cs''' af'''>2
                        :32
                        \mf
                        - \tenuto
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
                        <c'' ef''>2
                        :32
                        \arpeggio
                        <b b'>2
                        :32
                        \arpeggio
                        <cs' d''>2
                        :32
                        - \tenuto
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
                        \set PianoStaff.instrumentName =
                        \markup { Violoncello }
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        \clef "percussion"
                        r1 * 3/4
                        R1 * 3/4
                        \stopStaff \startStaff
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
                        \clef "bass"
                        <c' ef'>2
                        \ff
                        ^ \markup -14
                        ^ \markup +0
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \clef "tenor"
                        <f' a'>2
                        \p
                        ^ \markup +4
                        ^ \markup +14
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
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
                                        c'2
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
                            <f' a'>32 * 3/2
                            [
                            <a' cs''>32 * 25/16
                            \f
                            ^ \markup +16
                            ^ \markup -20
                            - \tweak circled-tip ##t
                            \>
                            r32 * 7/4
                            <a' cs''>32 * 65/32
                            ^ \markup +16
                            ^ \markup -20
                            r32 * 79/32
                            <a' cs''>32 * 49/16
                            ^ \markup +16
                            ^ \markup -20
                            <a' cs''>32 * 29/8
                            \!
                            ^ \markup +16
                            ^ \markup -20
                            ]
                        }
                        \revert TupletNumber.text
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
                        \set PianoStaff.instrumentName =
                        \markup { Contrabass }
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        \clef "percussion"
                        r1 * 3/4
                        R1 * 3/4
                        \stopStaff \startStaff
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
                        \clef "bass"
                        <bf,>2
                        \ff
                        ^ \markup -3
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <b,>2
                        \p
                        ^ \markup +0
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
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
                                        c'2
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
                            <b,>32 * 3/2
                            [
                            <cs>32 * 25/16
                            \f
                            ^ \markup +3
                            - \tweak circled-tip ##t
                            \>
                            r32 * 7/4
                            <cs>32 * 65/32
                            ^ \markup +3
                            r32 * 79/32
                            <cs>32 * 49/16
                            ^ \markup +3
                            <cs>32 * 29/8
                            \!
                            ^ \markup +3
                            ]
                        }
                        \revert TupletNumber.text
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
