    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 9/4
            s1 * 9/4
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \times 2/3
                    {
                        \set suggestAccidentals = ##t
                        f''16
                        - \accent
                        [
                        \(
                        \glissando
                        \boxed-markup "Sempre sul C, Portamento" 3
                        g''16
                        \glissando
                        fqs''16
                        \glissando
                        a''16
                        \glissando
                        gqs''16
                        \glissando
                        aqs''16
                        ]
                        \glissando
                        \set suggestAccidentals = ##f
                    }
                    \times 4/7
                    {
                        f''8
                        \)
                        [
                        \glissando
                        g''8
                        - \accent
                        \(
                        \glissando
                        fqs''8
                        \glissando
                        a''8
                        \glissando
                        gqs''8
                        \glissando
                        aqs''8
                        \glissando
                        f''8
                        \)
                        ]
                        \glissando
                    }
                    \times 2/3
                    {
                        \set suggestAccidentals = ##t
                        g''64
                        - \accent
                        [
                        \(
                        \glissando
                        fqs''64
                        \glissando
                        a''64
                        \glissando
                        gqs''64
                        \)
                        \glissando
                        aqs''64
                        - \accent
                        \(
                        \glissando
                        f''64
                        \glissando
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        g''32
                        \glissando
                        fqs''32
                        \glissando
                        a''32
                        \glissando
                        gqs''32
                        \glissando
                        aqs''32
                        ]
                        \glissando
                    }
                    f''64
                    \)
                    [
                    \glissando
                    g''64
                    - \accent
                    \(
                    \glissando
                    fqs''64
                    \glissando
                    a''64
                    \glissando
                    \times 4/5
                    {
                        gqs''64
                        \glissando
                        aqs''64
                        \glissando
                        f''64
                        \)
                        \glissando
                        g''64
                        - \accent
                        \(
                        \glissando
                        fqs''64
                        \glissando
                    }
                    a''64
                    \glissando
                    gqs''64
                    \)
                    \glissando
                    aqs''64
                    - \accent
                    \(
                    \glissando
                    f''64
                    \glissando
                    \times 2/3
                    {
                        g''32
                        \glissando
                        fqs''32
                        \glissando
                        a''32
                        ]
                        \glissando
                    }
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
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
                    \times 6/7
                    {
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        f''8
                        \)
                        \glissando
                        \set suggestAccidentals = ##f
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        g''8
                        - \accent
                        \(
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fqs''8
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        a''8
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        gqs''8
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        aqs''8
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        f''8
                        \glissando
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
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
                    \times 3/2
                    {
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        g''16
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fqs''16
                        - \accent
                        \)
                        \(
                        \glissando
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
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
                                    c'16
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
                        \set suggestAccidentals = ##t
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        a''64
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        gqs''64
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        aqs''64
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        f''64
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        g''64
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fqs''64
                        \glissando
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        a''64
                        \)
                        \set suggestAccidentals = ##f
                    }
                    \revert TupletNumber.text
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
