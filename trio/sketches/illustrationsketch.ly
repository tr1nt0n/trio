%! abjad.LilyPondFile._get_format_pieces()
\version "2.20.0"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"

%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! abjad.LilyPondFile._get_formatted_blocks()
{
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
                        f''16
                        [
                        g''16
                        fqs''16
                        a''16
                        gqs''16
                        aqs''16
                        ]
                    }
                    \times 4/7
                    {
                        f''8
                        [
                        g''8
                        fqs''8
                        a''8
                        gqs''8
                        aqs''8
                        f''8
                        ]
                    }
                    \times 2/3
                    {
                        g''64
                        [
                        fqs''64
                        a''64
                        gqs''64
                        aqs''64
                        f''64
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        g''32
                        [
                        fqs''32
                        a''32
                        gqs''32
                        aqs''32
                        ]
                    }
                    f''64
                    g''64
                    fqs''64
                    a''64
                    \times 4/5
                    {
                        gqs''64
                        [
                        aqs''64
                        f''64
                        g''64
                        fqs''64
                        ]
                    }
                    a''64
                    gqs''64
                    aqs''64
                    f''64
                    \times 2/3
                    {
                        g''32
                        [
                        fqs''32
                        a''32
                        ]
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
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        g''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fqs''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        a''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        gqs''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        aqs''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        f''8
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
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fqs''16
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
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        a''64
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        gqs''64
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        aqs''64
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        f''64
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        g''64
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fqs''64
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        a''64
                    }
                    \revert TupletNumber.text
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
